---
title: 从零构建在线简历：架构、自动化与 PDF 生成全解析
date: 2026-05-24
authors: [me]
summary: 深入剖析一个在线简历系统的技术实现——Hugo 静态站点生成、Puppeteer PDF 导出流水线、YAML 驱动的双语数据架构，以及 GitHub Actions 自动化部署。前后花了一天时间，从想法到上线。
tags: [architecture, hugo, pdf-generation, puppeteer, github-actions]
image:
  filename: featured.jpeg
---

## 前言

浏览一个工程师的简历时，除了看到“做了什么”，你是不是也想了解“怎么做的”？

搭建一个人人都能访问的在线简历是不是需要买域名、买托管服务？简历制作该怎么搞？先说结论：像我这样的在线简历，只需花费 **0 元**，**一天时间**即可。这份在线简历背后是一个完整的工程系统：静态站点生成、双语国际化、自动化 PDF 导出、CI/CD 持续部署。下面逐一拆解设计决策和技术实现。

---

## 一、总体架构

核心选型：**Hugo**（Go 编写的静态站点生成器）作为站点引擎，**HugoBlox Academic CV** 作为模板框架。

为什么是 Hugo 而不是 Next.js / Gatsby / Jekyll？

1. **构建速度**：Hugo 毫秒级增量构建，全站构建也在秒级，GitHub Actions 免费额度足够。
2. **零运行时依赖**：输出纯静态 HTML/CSS/JS，部署到 GitHub Pages 即可，不用维护服务器。
3. **HugoBlox 生态**：现成的 Academic CV 模板，直接支持 Markdown + YAML 内容管理、多语言、搜索。

站点和部署这块 HugoBlox 已经做得很好了——Tailwind CSS v4、Pagefind 全文搜索、GitHub Actions 部署流水线基本开箱即用，这部分我就不过多展开了。真正需要动手的是下面三件事：数据架构设计、PDF 导出，以及把这一切串起来的自动化脚本。

---

## 二、数据架构：YAML 驱动的单一数据源

这是整个系统里我觉得最有意思的部分。

### 2.1 数据结构分层

```
resume-data/
├── sources/                  # 权威数据源
│   ├── resume.yaml           # 个人信息、技能、教育、证书、语言
│   ├── experience.yaml       # 工作经历
│   └── projects.yaml         # 项目经验 (含个人项目)
├── templates/                # PDF 模板 (纯 HTML + CSS)
└── archive/                  # 历史版本

data/authors/
└── me.yaml                   # HugoBlox 作者数据 (供站点渲染)

content/{zh,en}/
├── _index.md                 # 首页
├── experience.md             # 经历页
└── projects/_index.md        # 项目页
```

### 2.2 设计思路

resume-data/sources/ 下的 YAML 文件是所有数据的唯一来源。站点渲染的 data/authors/me.yaml 和 PDF 模板里的内容都从这里衍生。

分成三个 YAML 文件的原因是：

- **resume.yaml**：个人基础信息、技能矩阵、教育背景、证书——这些东西基本不改，放着就行。
- **experience.yaml**：工作经历是核心叙事内容，结构复杂（公司 -> 团队 -> 职责），独立一个文件方便反复打磨措辞。
- **projects.yaml**：项目经验同样结构化（名称、时间、技术栈、摘要、贡献点），独立管理意味着增删项目时不会碰坏其他数据。

实际用起来的好处很实在：改一段工作经历描述时只动一个文件，Git diff 干净，review 范围明确。

### 2.3 双语支持

每个数据条目同时挂 zh 和 en：

```yaml
role:
  zh: "IT软件工程技术负责人"
  en: "IT Software Engineering Technical Leader"
```

Hugo 按 languages.yaml 处理双语言——zh 是默认语言，每种语言指向独立的 content/{lang}/ 目录。渲染块通过 username: me 引用作者数据，自动按当前语言取对应字段。访问 /（中文）和 /en/（英文）时，渲染的是同一套数据的不同语言版本。

---

## 三、PDF 生成：从 HTML 到 A4

### 3.1 技术方案：Puppeteer + Headless Chrome

思路很直接：写一个专为打印优化的 A4 HTML 模板，然后用 Puppeteer 驱动 Headless Chrome 把它"打印"成 PDF。

```javascript
// scripts/export-template-pdf.mjs 核心流程
async function generatePdf(browser, inputHtml, outputPdf) {
  const page = await browser.newPage();
  await page.goto(pathToFileURL(inputHtml).toString(), {
    waitUntil: "networkidle0",
  });
  // 等 Web Fonts 加载完
  await page.evaluate(async () => {
    if (document.fonts?.ready) {
      await document.fonts.ready;
    }
  });
  await page.pdf({
    path: outputPdf,
    format: "A4",
    printBackground: true,
    displayHeaderFooter: false,
  });
}
```

至于 HTML 模板本身——现在可以很方便地用 AI 来生成和调整，排版、样式、布局都能快速迭代，这也是选择 HTML 方案的一个加分项。

### 3.2 几个踩过的坑

**中文字体**：中文简历的排版质量全看字体。选了思源黑体（Source Han Sans CN）的三个字重，外加 JetBrains Mono 做等宽。@font-face 声明后必须等 document.fonts.ready，否则 PDF 里中文字全是方块。

**打印样式**：@media print 里去掉阴影、圆角、背景色，设 A4 页边距 0.6cm，break-inside: avoid 防止工作经历在分页处被拦腰截断。

**CI 环境**：GitHub Actions 的 Ubuntu runner 没有桌面环境，Puppeteer 得加 --no-sandbox。脚本检测 CI 环境变量自动切参数。

**跨平台**：本地开发 macOS，CI 跑 Linux，Chrome 路径不一样。脚本按 CHROME_BIN -> 标准路径 -> which 的顺序自适应查找。

### 3.3 输出

每次构建生成中英文两份 PDF，放在 static/uploads/ 下。Hugo 构建时原样复制到 public/uploads/，首页的"下载简历"按钮直接链到这些文件——不用额外托管。

---

## 四、自动化：一条命令搞定

```bash
pnpm run build
# 等价于：
# 1. pnpm run resume:pdf    -> 生成中英文 PDF
# 2. hugo --minify           -> 构建静态站点
# 3. pnpm run pagefind       -> 生成搜索索引
```

package.json 里把三步串起来，GitHub Actions 每次 push 到 main 就自动跑。建站、导 PDF、生成搜索索引、部署到 GitHub Pages，全流程不需要手动操作。

---

## 五、体会

这个简历系统虽然是个小项目，但它用到的思路跟我日常工作里处理企业级系统是一致的：

- **YAML 单一数据源**——数据和展示分离，改一处不牵动全身
- **Puppeteer PDF 流水线**——用浏览器渲染生成 PDF，HTML 模板可借助 AI 快速创建和迭代
- **关注点分离**——数据层 / 展示层 / 导出层各自独立，随便改哪层都不影响另外两层
- **一条命令全自动**——从 PDF 导出到部署上线，不在手动步骤上浪费时间

一天时间从想法到上线，而且完全零成本（域名用 GitHub Pages 默认的，托管免费）。如果你对哪个技术细节感兴趣，欢迎通过 GitHub 聊聊。