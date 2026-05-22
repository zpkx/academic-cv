# Academic CV Population — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Populate the HugoBlox Academic CV site with Peng Zhang's resume content (EN + ZH bilingual).

**Architecture:** Hugo multi-language site with `content/en/` and `content/zh/` subdirectories. Author profile in `data/authors/me.yaml` drives Bio and Experience blocks. Projects page uses a markdown block for single-page listing. Menu simplified to Bio / Experience / Projects.

**Tech Stack:** Hugo 0.161.1, HugoBlox Kit Academic CV template, YAML author schema v1.

---

### Task 1: Configure Hugo for bilingual + identity

**Files:**
- Modify: `config/_default/languages.yaml`
- Modify: `config/_default/hugo.yaml`
- Modify: `config/_default/params.yaml`

- [ ] **Step 1: Enable Chinese language**

Edit `config/_default/languages.yaml` — uncomment and configure `zh` section, add `contentDir` for English:

```yaml
en:
  locale: en-us
  contentDir: content/en
  title: Peng Zhang

zh:
  locale: zh-Hans
  contentDir: content/zh
  title: 张鹏
  params:
    description: 张鹏的个人学术简历网站 — IT 软件工程技术负责人，20+ 年经验
  menu:
    main:
      - name: 简介
        url: /
        weight: 10
      - name: 经历
        url: experience/
        weight: 20
      - name: 项目
        url: projects/
        weight: 30
```

- [ ] **Step 2: Update hugo.yaml**

Edit `config/_default/hugo.yaml`:

```yaml
title: ''
baseURL: 'https://example.com/'
defaultContentLanguage: en
hasCJKLanguage: true
defaultContentLanguageInSubdir: false
removePathAccents: true
```

(Change `hasCJKLanguage` from `false` to `true`)

- [ ] **Step 3: Update site identity in params.yaml**

Edit `config/_default/params.yaml`, update the `identity` section:

```yaml
identity:
  name: "Peng Zhang"
  organization: ""
  type: person
  tagline: "IT Software Engineering Technical Leader"
  description: "Peng Zhang — IT Software Engineering Technical Leader with 20+ years of experience in full-stack development, cloud native architecture, and AI-driven engineering."
  social:
    twitter: ""
```

- [ ] **Step 4: Commit**

```bash
git add config/_default/languages.yaml config/_default/hugo.yaml config/_default/params.yaml
git commit -m "feat: configure Hugo for bilingual support and site identity"
```

---

### Task 2: Create author profile

**Files:**
- Modify: `data/authors/me.yaml`

- [ ] **Step 1: Write author profile with resume data**

Replace `data/authors/me.yaml` with:

```yaml
schema: hugoblox/author/v1
slug: me
is_owner: true
name:
  display: Peng Zhang
  given: Peng
  family: Zhang
  alternate: 张鹏
  pronunciation: ''
  pronouns: he/him
postnominals: []
status:
  icon: "💻"
role: IT Software Engineering Technical Leader
bio: |
  I bring strong self-management, a proactive learning mindset, and solid hands-on capability.
  A broad knowledge base and analytical thinking enable me to dive deep into complex technical
  challenges. With 20+ years of experience in the IT and software industry, I have built rich
  cross-domain project experience.

  Within teams, I serve as a technical backbone and leader, driving the team to achieve shared
  goals. Fluent in English, I excel at cross-functional communication and coordination.
  I am highly self-driven and committed to continuous improvement, proactively exploring
  frontier technologies and striving for excellence in every task.

affiliations:
  - name: Cisco Systems (China) R&D Co., Ltd.
    url: https://www.cisco.com/

links:
  - icon: at-symbol
    url: mailto:zpkx@qq.com
    label: E-mail Me
  - icon: phone
    url: tel:+8618955199945
    label: "+86 189-5519-9945"

interests:
  - AI & LLM (LangChain, RAG, MCP, AI Agent)
  - Cloud Native Architecture (Docker, Kubernetes, OpenShift)
  - Full-Stack Development (Java/Spring, Angular, React)
  - DevSecOps & CI/CD Engineering
  - Developer Productivity & AI Harness

education:
  - degree: Bachelor's in Computer Applications
    institution: Hefei University of Technology
    start: 1999-09-01
    end: 2003-07-01
    summary: ''
    button:
      text: ''
      url: ''
      icon: ''

experience:
  - role: IT Software Engineering Technical Leader
    org: Cisco Systems (China) R&D Co., Ltd. — Hefei
    start: 2008-07-01
    summary: |
      **Supply Chain IT Source & Finance Team · Tech Lead**

      - Lead cross-border India + China engineering team delivering cloud-based IT platforms for Cisco Supply Chain
      - Drive Cloud Native architecture design and validation; establish microservices and cloud-native technical standards
      - Build foundational frontend/backend frameworks and reference implementations for delivery consistency
      - Lead technical and business training, mentor developers, resolve complex production and design issues
      - Drive department-level technical decisions and standardization
      - Drive AI adoption within the team, leveraging AI Harness, Coding Agents, and RAG

      **Cloud Software Team · Tech Lead**

      - Led team transformation from configuration management to DevOps; grew team from 3 to 15
      - Architected, built, and operated the team's CI/CD platform; optimized build, test, and release workflows
      - Defined and governed software development lifecycle processes
      - Implemented automated environment provisioning and management
      - Researched emerging technologies and industry best practices, driving their adoption
  - role: Senior Software Engineer
    org: Yahoo! China — Platform Technology Department
    start: 2006-02-01
    end: 2008-06-30
    summary: |
      Core member of the Platform Technology team, contributing to Yahoo! China's social product line
      including new products (Zhanzhang Tianxia) and major enhancements to existing products (Yahoo Photos).
      Mentored 2 junior engineers through their onboarding and ramp-up.
  - role: Software QA Engineer
    org: WebEx Communications (China) — Hefei
    start: 2004-02-01
    end: 2006-02-28
    summary: |
      Owned testing for multiple WebEx Meeting projects — test planning, case design, and execution —
      collaborating closely with US-based PMs and engineers across global sites.
  - role: Software Engineer
    org: Anhui Baipeng Information Technology Co., Ltd.
    start: 2003-02-01
    end: 2004-02-28
    summary: |
      Developed, tested, and maintained B/S architecture applications.
      Maintained internal network infrastructure and servers.

skills:
  - name: AI & Intelligence
    items:
      - label: LangChain, RAG, MCP
        level: 4
      - label: AI Agent, AI Harness
        level: 5
      - label: Python
        level: 4
  - name: Backend
    items:
      - label: Java + Spring (Boot, Cloud)
        level: 5
      - label: Node.js
        level: 3
  - name: Frontend
    items:
      - label: Angular
        level: 5
      - label: React
        level: 4
  - name: Data
    items:
      - label: Oracle, MySQL, PostgreSQL
        level: 5
      - label: Redis, MongoDB
        level: 4
      - label: Kafka
        level: 4
  - name: Architecture & Cloud
    items:
      - label: Cloud Native / Microservices
        level: 5
      - label: Docker, Kubernetes
        level: 4
      - label: OpenShift
        level: 4
  - name: DevSecOps
    items:
      - label: CI/CD, Jenkins
        level: 5
      - label: SonarQube, SAST, Conjur
        level: 4

languages:
  - name: English
    level: 5
    label: Fluent (working language for 17+ years)
  - name: Chinese
    level: 5
    label: Native

awards:
  - title: AWS Certified Solutions Architect — Associate
    awarder: Amazon Web Services
    date: "2020-05-01"
    summary: ''
    icon: hero/trophy
  - title: Certified Scrum Master (CSM)
    awarder: Scrum Alliance
    date: "2015-01-01"
    summary: ''
    icon: hero/trophy
  - title: Oracle Certified Associate — WebLogic Server 11g System Administrator
    awarder: Oracle
    date: "2014-06-01"
    summary: ''
    icon: hero/trophy
```

- [ ] **Step 2: Commit**

```bash
git add data/authors/me.yaml
git commit -m "feat: add author profile with resume data"
```

---

### Task 3: Set up EN/ZH content directories

**Files:**
- Create: `content/en/_index.md` (homepage)
- Create: `content/zh/_index.md` (homepage)
- Create: `content/en/experience.md`
- Create: `content/zh/experience.md`
- Create: `content/en/projects/_index.md`
- Create: `content/zh/projects/_index.md`
- Remove old top-level content files

- [ ] **Step 1: Create English homepage**

Write `content/en/_index.md`:

```yaml
---
title: ''
summary: ''
date: 2022-10-24
type: landing

sections:
  - block: resume-biography-3
    content:
      username: me
      text: ''
      button:
        text: Download CV
        url: uploads/resume.pdf
      headings:
        about: ''
        education: ''
        interests: ''
    design:
      background:
        gradient_mesh:
          enable: true
      name:
        size: md
      avatar:
        size: medium
        shape: circle
  - block: markdown
    content:
      title: 'About My Work'
      subtitle: ''
      text: |-
        I'm an IT Software Engineering Technical Leader at Cisco Systems with 20+ years of experience.
        My work spans full-stack development, cloud native architecture, and DevSecOps engineering.

        I lead cross-border teams (US / India / China) to deliver core Supply Chain Finance business
        systems. I'm passionate about driving AI adoption in software engineering through AI Harness,
        Coding Agents, and RAG — improving both developer productivity and code quality.

        Feel free to reach out to collaborate.
    design:
      columns: '1'
---
```

- [ ] **Step 2: Create Chinese homepage**

Write `content/zh/_index.md`:

```yaml
---
title: ''
summary: ''
date: 2022-10-24
type: landing

sections:
  - block: resume-biography-3
    content:
      username: me
      text: ''
      button:
        text: 下载简历
        url: uploads/resume.pdf
      headings:
        about: ''
        education: ''
        interests: ''
    design:
      background:
        gradient_mesh:
          enable: true
      name:
        size: md
      avatar:
        size: medium
        shape: circle
  - block: markdown
    content:
      title: '关于我的工作'
      subtitle: ''
      text: |-
        我是思科系统（Cisco Systems）的 IT 软件工程技术负责人，拥有 20+ 年经验。
        我的工作涵盖全栈开发、云原生架构和 DevSecOps 工程。

        我带领跨国团队（美国 / 印度 / 中国）交付核心供应链财务业务系统。我热衷于通过
        AI Harness、Coding Agents 和 RAG 推动软件工程中的 AI 落地应用，
        提升研发效率和代码质量。

        欢迎联系交流。
    design:
      columns: '1'
---
```

- [ ] **Step 3: Create English experience page**

Write `content/en/experience.md`:

```yaml
---
title: 'Experience'
date: 2023-10-24
type: landing

design:
  spacing: '5rem'

sections:
  - block: resume-experience
    content:
      username: me
    design:
      date_format: 'January 2006'
      is_education_first: false
  - block: resume-skills
    content:
      title: Skills
      username: me
  - block: resume-awards
    content:
      title: Certifications
      username: me
  - block: resume-languages
    content:
      title: Languages
      username: me
---
```

- [ ] **Step 4: Create Chinese experience page**

Write `content/zh/experience.md`:

```yaml
---
title: '工作经历'
date: 2023-10-24
type: landing

design:
  spacing: '5rem'

sections:
  - block: resume-experience
    content:
      username: me
    design:
      date_format: '2006年1月'
      is_education_first: false
  - block: resume-skills
    content:
      title: 技术专长
      username: me
  - block: resume-awards
    content:
      title: 证书
      username: me
  - block: resume-languages
    content:
      title: 语言能力
      username: me
---
```

- [ ] **Step 5: Remove old top-level content files**

```bash
rm content/_index.md content/experience.md
rm content/authors/_index.md
```

- [ ] **Step 6: Commit**

```bash
git add content/ config/_default/
git commit -m "feat: set up bilingual content structure (EN/ZH home + experience pages)"
```

---

### Task 4: Create Projects pages (EN + ZH)

**Files:**
- Write: `content/en/projects/_index.md`
- Write: `content/zh/projects/_index.md`

- [ ] **Step 1: Write English projects page**

Write `content/en/projects/_index.md`:

```yaml
---
title: 'Projects'
date: 2023-10-24
type: landing

design:
  spacing: '5rem'

sections:
  - block: markdown
    content:
      title: 'Selected Projects'
      subtitle: ''
      text: |

        ### Cisco IT Supply Chain GenAI Platform `Jun 2025 — Jan 2026`

        > **Stack**: Python · Streamlit · Duo SSO · GPU (CUDA) · OpenStack · HTTPS/TLS · Poetry · CI/CD · Ansible

        Internal AI Q&A and automation platform for Cisco Supply Chain based on **RAG + LangGraph**,
        integrated with multiple enterprise systems.

        - Integrated **Duo SSO** with Streamlit UI for unified user authentication
        - Installed and configured **NVIDIA GPU drivers** for embedding-vectorization acceleration
        - Configured HTTPS and TLS certificates across Dev/Stage/Prod on **OpenStack**
        - Migrated dependency management from pip to **Poetry**; built CI/CD pipeline
        - Installed and configured **Ansible** for multi-VM automation foundation

        ---

        ### Supply Chain Finance Miscellaneous Tools `Sep 2023 — Present`

        > **Stack**: Java 21 · Spring Boot 4.0 · Spring Security · OAuth2 · Angular 21 · Gradle (Kotlin DSL) · Docker · Jenkins · Spinnaker · Conjur

        Lightweight tools platform for the Supply Chain Finance team, hosting multiple high-frequency
        internal business tools with Excel/CSV uploads, cost-data downloads, and email notifications.

        - Monolithic Angular SPA + Spring Boot with **Gradle (Kotlin DSL)** unified build
        - SSO and dual-layer RBAC on **Spring Security + OAuth2 + Cisco LDAP**
        - API-First with **OpenAPI v3** contract and code generation pipeline
        - Drove **Spring Boot 2 → 4.0** and **Angular → 21** upgrades via **OpenRewrite**
        - Built DevSecOps pipeline with **Jenkins + SonarQube + SAST + Spinnaker**

        ---

        ### CART-Kafka — CBM Data Ingestion Microservice `Jul 2024 — Present`

        > **Stack**: Java 21 · Spring Boot 4.0 · Spring Kafka · Oracle · OAuth2 · Conjur · Docker · Jenkins · Spinnaker · OpenShift

        Upstream data-ingestion microservice consuming the CBM Kafka stream from Oracle Cloud,
        replicating component business data into enterprise ESM interface tables.

        - Tech Lead driving "independent microservice + dual Oracle data sources" layered architecture
        - Built Kafka consumer framework, dual-datasource auto-configuration, CBM entity model
        - Batch insert performance optimization via Hibernate batching + sliced `saveAll` strategy
        - Drove **Spring Boot 2.x → 4.0** and **Java → 21** upgrades via **OpenRewrite**
        - Migrated from Cert Auth to OAuth2; integrated **Conjur**; built on Cisco IT **Golden Pipeline**

        ---

        ### CART — Cost Analysis and Reconciliation Tool `Sep 2020 — Present`

        > **Stack**: Java 21 · Spring Boot 4.0 · Spring Security · OAuth2 · Oracle · Redis · OpenAPI v3 · AWS S3 · Angular 21 · AG Grid · Docker · Jenkins · Spinnaker · OpenShift

        Core Supply Chain Finance system automating day-end close — cost variance analysis and
        three-source reconciliation across Sub-Ledger / General Ledger / Cloud.

        - Bootstrapped full-stack frontend/backend scaffolding, evolved into team reference implementation
        - Implemented SSO, RBAC, and service-to-service auth on **Spring Security + OAuth2 + LDAP**
        - Designed and built **Cisco COS / AWS S3** integration with unified object-storage abstraction
        - Drove **Spring Boot → 4.0**, **Java → 21**, **Angular → 21** upgrades via **OpenRewrite**
        - Built DevSecOps pipeline: **Jenkins + SonarQube + SAST + PMD + JaCoCo + Spinnaker**

        ---

        ### RCE — Royalty Calculation Engine `Jul 2018 — Present`

        > **Stack**: Java 21 · Spring Boot 4.0 · OAuth2 · JWT · Oracle · Redis · WebFlux · Angular 21 · Nx Monorepo · AG Grid · Docker · Jenkins · Spinnaker · OpenShift

        Cisco's enterprise-wide system for calculating outbound royalty payments to suppliers,
        covering **30+ business modules** — the largest business system in the department.

        - Tech Lead for a 9-person team across US/India/China, owning end-to-end delivery
        - Cloud Native architecture with **API-First (OpenAPI v3)** code generation
        - Pioneered **Blue-Green Deployment** — first project in the department with this capability
        - Frontend on **Nx Monorepo** with publishable shared library `@scf/common-lib`
        - Drove continuous modernization through **OpenRewrite**; integrated **Micrometer Tracing**

        ---

        ### Self Service Model `Nov 2014 — Jan 2018`

        > **Stack**: RedHat · Java · Shell

        Streamlined build and deployment workflows enabling Dev/QA self-service releases with
        Build-Once/Deploy-Many. Developed a Continuous Delivery Portal providing real-time pipeline metrics.

        ---

        ### Continuous Delivery Transformation `Nov 2013 — Oct 2014`

        > **Stack**: Stash · Enterprise Jenkins · Artifactory Pro · SonarQube · IBM UrbanCode Deploy/Release

        Cisco IT-wide CDT initiative — migrated legacy Git, Jenkins, and Artifactory to the new unified
        platform; adopted uDeploy and uRelease for automated deployment and release management.

        ---

        ### Data Center Migration `Jul 2012 — Oct 2013`

        > **Stack**: RedHat · WebLogic · Oracle HTTP Server

        Migrated applications from legacy WebEx Data Center to standard Cisco Data Center.
        Authored a complete suite of **WLST** automation scripts to accelerate environment setup.

        ---

        ### Git Migration `Jul 2011 — Jun 2012`

        > **Stack**: RedHat · Clustered Tomcat · Git · Gitblit · gitolite · GitLab

        Led team migration from CVS to Git — delivered POC, developed technical strategy and rollout plan,
        trained developers on Git (in English), and led DevOps engineers through the migration.

        ---

        ### Earlier Projects (2003 — 2010)

        | Period | Project | Highlights |
        |---|---|---|
        | 2009/9 — 2010/10 | Continuous Integration | Refactored CruiseControl; migrated to Hudson (Jenkins) |
        | 2008/8 — 2009/8 | WebEx Elvis | Maintained lifecycle management system (PHP + MySQL) |
        | 2008/7 — 2009/8 | Myify | Lead developer of PHP/Zend/Dojo task-tracking app (90%+ code) |
        | 2007/10 — 2008/5 | Y!China NBS Platform | Lead frontend engineer for Yahoo's site-builder platform |
        | 2007/5 — 2007/7 | Y!China Blog UGC | Frontend architecture for Yahoo blog aggregation |
        | 2006/2 — 2007/5 | Y!China Photo Service | Lead frontend engineer; grew PV from <1M to 20M+ |
        | 2003/10 — 2004/2 | National Foreign Investment Inspection | .NET system for Ministry of Commerce + 7 ministries |
  - block: markdown
    content:
      title: 'Side Projects'
      subtitle: ''
      text: |

        ### RCE UI Rewrite in React `Apr 2026 — May 2026`

        > **Stack**: React 19 · TypeScript 6 · Vite 8 · Vitest · Playwright · React Router 7 · TanStack Query v5 · AG Grid Enterprise · Orval · OIDC · Cisco Atmosphere v4 · Tailwind CSS · pnpm Monorepo · Docker

        A personal exploration initiative pursuing multiple compounding goals: validate the
        **Vibe Coding** paradigm with AI Harness methodology, align UI/UX with the latest
        Cisco Design System (Atmosphere v4), lift code quality, and optimize performance.

        - **22 business pages rewritten** in ~2 months — validating Vibe Coding for end-to-end architecture migration
        - Produced reusable **pnpm Monorepo + React 19 + Vite + Orval + TanStack Query** scaffold
        - Landed **OIDC SSO**, **AG Grid Enterprise**, runtime env-config injection, **Docker**, and **Playwright E2E** tests
        - Harnessed AI Coding Agents with **Superpowers plugin** and custom-built **Skills** for reusable Agent workflows

        ---

        ### Playwright Test Automation `2025 — 2026`

        > **Stack**: Playwright · TypeScript · Page Object Model · oracledb · TA JWT (RSA) · DUO OIDC · OAuth2 JWT · Express · Docker · Jenkins · Conjur

        Cross-project E2E automation initiative introducing a modern, reusable testing framework for the team.

        - Built cross-app framework from scratch covering **CART (E2E + API)** and **RCE (E2E / Regression / Smoke)**
        - Designed **TA JWT (RSA-signed)** auth mechanism to solve enterprise SSO blocking unattended automation
        - Built and maintain custom **Playwright Docker image**; CI orchestrated via **Jenkins parameter matrix**
        - Self-hosted **Test Report Server** (Express + Multer) with DUO OIDC + OAuth2 JWT protection
        - Adopted as reusable template by multiple team projects
    design:
      columns: '1'
---
```

- [ ] **Step 2: Write Chinese projects page**

Write `content/zh/projects/_index.md`:

```yaml
---
title: '项目经验'
date: 2023-10-24
type: landing

design:
  spacing: '5rem'

sections:
  - block: markdown
    content:
      title: '项目经验'
      subtitle: ''
      text: |

        ### Cisco IT Supply Chain GenAI Platform `2025/6 — 2026/1`

        > **技术栈**: Python · Streamlit · Duo SSO · GPU (CUDA) · OpenStack · HTTPS/TLS · Poetry · CI/CD · Ansible

        基于 **RAG + LangGraph** 为 Cisco 供应链构建的企业内部 AI 问答与自动化平台，集成多个企业系统，
        实现智能问答与业务自动化。

        - 完成 **Duo SSO** 与 Streamlit UI 的集成，填补统一用户登录能力
        - 在生产 VM 上完成 **Nvidia GPU 驱动安装与配置**，为 Embedding 向量化加速提供算力底座
        - 在 **OpenStack** 上为 Dev/Stage/Prod 环境完成 HTTPS 与 TLS 证书配置
        - 将依赖管理从 pip 迁移至 **Poetry**，并完成 **CI/CD Pipeline** 搭建
        - 完成 **Ansible** 安装与配置，建立多 VM 自动化运维基础

        ---

        ### Supply Chain Finance Miscellaneous Tools `2023/9 — 至今`

        > **技术栈**: Java 21 · Spring Boot 4.0 · Spring Security · OAuth2 · Angular 21 · Gradle (Kotlin DSL) · Docker · Jenkins · Spinnaker · Conjur

        面向供应链财务团队的轻量级工具集平台，承载多个高频内部业务工具，
        覆盖 Excel/CSV 批量上传、成本数据下载、邮件通知等场景。

        - Monolithic Angular SPA + Spring Boot 同仓共建，**Gradle (Kotlin DSL)** 统一编排
        - 基于 **Spring Security + OAuth2 + Cisco LDAP** 实现 SSO 与 RBAC
        - API-First 维护 OpenAPI v3 规范并落地代码自动生成
        - 通过 **OpenRewrite** 主导 Spring Boot 2 → 4.0、Angular → 21 升级
        - 搭建 **Jenkins + SonarQube + SAST + Spinnaker** 自动化交付链路

        ---

        ### CART-Kafka — CBM 数据接入微服务 `2024/7 — 至今`

        > **技术栈**: Java 21 · Spring Boot 4.0 · Spring Kafka · Oracle · OAuth2 · Conjur · Docker · Jenkins · Spinnaker · OpenShift

        CART 项目的上游数据接入微服务，消费 Oracle Cloud 的 CBM Kafka 数据流，
        将组件业务数据近实时复制到企业 ESM 系统的 XXCART schema 接口表中。

        - Tech Lead 主导从 0 到 1 的架构设计，确立"独立微服务 + 双 Oracle 数据源"分层架构
        - 完成 Kafka Consumer 框架、双数据源自动配置、CBM 实体模型与持久化层
        - 通过 Hibernate Batch + 按 batch_size 切片调用 saveAll 实现批量写入性能优化
        - 通过 **OpenRewrite** 主导 Spring Boot 2.x → 4.0、Java → 21 多轮升级
        - 完成 Cert Auth → OAuth2 迁移；密钥托管接入 **Conjur**；迁移至 Cisco IT **Golden Pipeline**

        ---

        ### CART — Cost Analysis and Reconciliation Tool `2020/9 — 至今`

        > **技术栈**: Java 21 · Spring Boot 4.0 · Spring Security · OAuth2 · Oracle · Redis · OpenAPI v3 · AWS S3 · Angular 21 · AG Grid · Docker · Jenkins · Spinnaker · OpenShift

        供应链财务核心业务系统，自动化日结流程中的成本差异分析与子账/总账/Cloud 三源对账，
        后端 22 个 Controller/43 个 Service，前端 17 个业务模块。

        - 主导搭建前后端分离的全栈脚手架，演进为团队参考实现
        - 基于 **Spring Security + OAuth2 + LDAP** 实现 SSO、RBAC 与服务间鉴权
        - 完成 **Cisco COS / AWS S3** 集成，统一抽象对象存储能力
        - 通过 **OpenRewrite** 主导 Spring Boot → 4.0、Java → 21、Angular → 21 升级
        - 负责 **Jenkins + SonarQube + SAST + PMD + JaCoCo + Spinnaker** 交付链路

        ---

        ### RCE — Royalty Calculation Engine `2018/7 — 至今`

        > **技术栈**: Java 21 · Spring Boot 4.0 · OAuth2 · JWT · Oracle · Redis · WebFlux · Angular 21 · Nx Monorepo · AG Grid · Docker · Jenkins · Spinnaker · OpenShift

        Cisco 全公司用于计算外付供应商专利税的核心业务系统，覆盖 **30+ 业务模块**，
        是部门内体量最大的业务系统。

        - Tech Lead 带领 US/India/China 共 9 人团队，端到端负责设计、开发、上线与运维
        - Cloud Native 架构 + **API-First (OpenAPI v3)** 代码生成
        - 率先落地 **Blue-Green 部署** — 供应链 IT 部门首个具备此能力的项目
        - 前端基于 **Nx Monorepo**，孵化可发布共享库 `@scf/common-lib`
        - 通过 **OpenRewrite** 主导持续技术演进；接入 **Micrometer Tracing** 分布式追踪

        ---

        ### Self Service Model `2014/11 — 2018/1`

        > **技术栈**: RedHat · Java · Shell

        优化构建和部署流程，实现 Dev、QA 团队以 Self Service 方式完成上线，
        实现一次构建多次部署。开发 Continuous Delivery Portal 提供实时数据和统计报表。

        ---

        ### Continuous Delivery Transformation `2013/11 — 2014/10`

        > **技术栈**: Stash · Enterprise Jenkins · Artifactory Pro · SonarQube · IBM UrbanCode Deploy/Release

        Cisco IT 部门 CDT 项目 — 迁移老旧 Git/Jenkins/Artifactory 到新平台，
        利用 uDeploy 和 uRelease 完成自动化部署和上线管理。

        ---

        ### Data Center Migration `2012/7 — 2013/10`

        > **技术栈**: RedHat · WebLogic · Oracle HTTP Server

        将应用程序从老 WebEx Data Center 迁移到标准 Cisco Data Center。
        编写整套 **WLST** 自动化脚本加速环境搭建。

        ---

        ### Git Migration `2011/7 — 2012/6`

        > **技术栈**: RedHat · Clustered Tomcat · Git · Gitblit · gitolite · GitLab

        主导团队从 CVS 到 Git 的迁移 — 完成 POC，制定技术方案和计划，培训开发人员，
        带领 DevOps 成员完成迁移。

        ---

        ### 早期项目 (2003 — 2010)

        | 时间 | 项目 | 亮点 |
        |---|---|---|
        | 2009/9 — 2010/10 | Continuous Integration | 重构 CruiseControl；主导迁移至 Hudson（Jenkins） |
        | 2008/8 — 2009/8 | WebEx Elvis | 维护内部生命周期管理系统（PHP + MySQL） |
        | 2008/7 — 2009/8 | Myify | PHP/Zend/Dojo 任务跟踪应用主开发（90%+ 代码） |
        | 2007/10 — 2008/5 | Y!China NBS Platform | 雅虎站长天下建站平台前端主开发 |
        | 2007/5 — 2007/7 | Y!China Blog UGC | 雅虎博客聚合前端架构设计 |
        | 2006/2 — 2007/5 | Y!China Photo Service | 雅虎相册前端主开发，PV 从 <100 万提升至 2000 万+ |
        | 2003/10 — 2004/2 | 国家外资年检系统 | 商务部联合 7 部委的 .NET 系统 |
  - block: markdown
    content:
      title: '业余项目'
      subtitle: ''
      text: |

        ### RCE UI 重写为 React `2026/4 — 2026/5`

        > **技术栈**: React 19 · TypeScript 6 · Vite 8 · Vitest · Playwright · React Router 7 · TanStack Query v5 · AG Grid Enterprise · Orval · OIDC · Cisco Atmosphere v4 · Tailwind CSS · pnpm Monorepo · Docker

        个人主导的探索性 Initiative，验证 **Vibe Coding** 模式与 AI Harness 实践，
        对齐最新 Cisco Design System (Atmosphere v4)，提升代码质量与性能。

        - 约 2 个月独立完成 **22 个业务页面** 的全量重写，验证 Vibe Coding 可行性
        - 沉淀 **pnpm Monorepo + React 19 + Vite + Orval + TanStack Query** 现代前端脚手架
        - 完成 **OIDC SSO**、**AG Grid Enterprise**、Docker 容器化、Playwright E2E 测试
        - 综合运用 **Superpowers 插件**与自建 **Skills** 形成可复用的 Agent 工作流

        ---

        ### Playwright Test Automation `2025 — 2026`

        > **技术栈**: Playwright · TypeScript · Page Object Model · oracledb · TA JWT (RSA) · DUO OIDC · OAuth2 JWT · Express · Docker · Jenkins · Conjur

        为团队引入现代化、可复用、跨项目通用的端到端自动化测试体系。

        - 基于 **Playwright + TypeScript + Page Object Model** 从 0 搭建跨应用测试框架
        - 设计 **TA JWT (RSA 签名)** 认证方案，解决企业 SSO 阻塞自动化测试的难题
        - 自构建并维护专用 Playwright Docker 镜像；通过 Jenkins Pipeline + 矩阵参数调度
        - 自建 Test Report Server（Express + Multer），DUO OIDC + OAuth2 JWT 保护
        - 作为可复用模板被团队多个项目采纳
    design:
      columns: '1'
---
```

- [ ] **Step 3: Commit**

```bash
git add content/en/projects/ content/zh/projects/
git commit -m "feat: add bilingual projects pages (EN + ZH)"
```

---

### Task 5: Update navigation menus

**Files:**
- Modify: `config/_default/menus.yaml`

- [ ] **Step 1: Simplify navigation to Bio / Experience / Projects**

Replace `config/_default/menus.yaml`:

```yaml
main:
  - name: Bio
    url: /
    weight: 10
  - name: Experience
    url: experience/
    weight: 20
  - name: Projects
    url: projects/
    weight: 30
```

- [ ] **Step 2: Commit**

```bash
git add config/_default/menus.yaml
git commit -m "feat: simplify navigation to Bio, Experience, Projects"
```

---

### Task 6: Copy static assets

**Files:**
- Copy: `static/uploads/resume.pdf` (from resume directory)
- (avatar.jpg — deferred until user provides photo)

- [ ] **Step 1: Copy PDF resume**

```bash
mkdir -p static/uploads
cp /Users/pengzha2/Workspace/my_resume/Peng_Zhang_resume_cn_2026_python.pdf static/uploads/resume.pdf
```

- [ ] **Step 2: Commit**

```bash
git add static/uploads/
git commit -m "feat: add PDF resume for download"
```

---

### Task 7: Remove sample content

**Files:**
- Delete: `content/blog/`, `content/courses/`, `content/events/`, `content/publications/`, `content/projects/`, `content/slides/`

- [ ] **Step 1: Remove sample content directories**

```bash
rm -rf content/blog/ content/courses/ content/events/ content/publications/ content/projects/ content/slides/
```

- [ ] **Step 2: Commit**

```bash
git add content/
git commit -m "chore: remove sample content (blog, courses, events, publications, slides)"
```

---

### Task 8: Verify site builds successfully

- [ ] **Step 1: Run Hugo server and check for errors**

```bash
hugo server --disableFastRender --bind 0.0.0.0
```

Verify: Site starts without errors. Check both `http://localhost:1313/` and `http://localhost:1313/zh/` render correctly.

- [ ] **Step 2: Fix any issues found**

If Hugo reports schema errors, fix the relevant YAML files. If content doesn't render, check frontmatter syntax.

- [ ] **Step 3: Final commit (if fixes made)**

```bash
git add -A
git commit -m "fix: address Hugo build issues"
```
