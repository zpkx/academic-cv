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
