# Peng Zhang

> **IT Software Engineering Technical Leader** ｜ 20+ Years of Experience ｜ Hefei, China

📱 +86 189-5519-9945 ｜ ✉️ [zpkx@qq.com](mailto:zpkx@qq.com)

---

## Personal Information

| Name           | Peng Zhang        | Gender               | Male    |
| -------------- | ----------------- | -------------------- | ------- |
| **Date of Birth** | 1980 / 8 / 17     | **Residence / Hukou** | Hefei   |
| **Years of Experience** | 20+               | **Marital Status**     | Married |

---

## Professional Summary

I bring strong self-management, a proactive learning mindset, and excellent hands-on capability. A broad knowledge base and analytical thinking enable me to dive deep into complex technical challenges. With years of experience and accumulated expertise in the IT and software industry, I have built rich cross-domain project experience.

Within teams, I serve as a technical backbone and leader, driving the team to achieve shared goals. Fluent in English across listening, speaking, reading, and writing, I excel at cross-functional communication and collaboration.

I am highly self-driven and committed to continuous improvement. I proactively explore and research frontier technologies, striving for excellence in every task. With self-discipline and a goal-oriented mindset, I consistently deliver high-quality outcomes while helping drive team innovation and growth.

---

## Technical Expertise

| Category                 | Technologies                                                                       |
| ------------------------ | ---------------------------------------------------------------------------------- |
| **AI & Intelligence**    | LangChain, MCP, RAG, AI Agent, AI Harness (Cursor, Claude Code, Copilot)         |
| **Backend Development**  | Java + Spring (Boot, Cloud), Python, Node.js                                      |
| **Frontend Development** | Angular, React                                                                     |
| **Data Storage**         | SQL (Oracle, MySQL, PostgreSQL), NoSQL (Redis, MongoDB)                           |
| **Architecture & Cloud** | Monolithic, Microservice, Cloud Native (OpenShift, Docker, Kubernetes)            |
| **Engineering Productivity** | DevSecOps (CI/CD, Jenkins, SonarQube, Security Scanning)                           |

---

## Work Experience

### Cisco Systems (China) Research & Development Co., Ltd. — Hefei

**IT Software Engineering Technical Leader** ｜ Telecom / Networking ｜ `Jul 2008 — Present`

**▸ Supply Chain IT Source & Finance Team · Tech Lead**

1. **Team Leadership**: Lead a cross-border India and China engineering team to deliver multiple cloud IT systems for Cisco Supply Chain;
2. **Architecture Design**: Drive Cloud Native architecture design and validation, and establish team-level microservice and cloud-native technical standards;
3. **Technical Stewardship**: Build foundational frontend/backend frameworks and reference implementations to improve delivery consistency;
4. **People Development**: Lead technical and business training, mentor engineers, and solve complex development and production issues;
5. **Technical Decision-Making**: Participate in and drive department-level technical decisions and standardization, producing reusable solution patterns;
6. **AI Adoption**: Drive AI adoption in the team by leveraging AI Harness, Coding Agents, and RAG to improve engineering productivity and code quality.

**▸ Cloud Software Team · Tech Lead**

1. **Team Building**: Helped transform the team from CM (Configuration Management) to DevOps, growing from 3 people in 2009 to 15, and co-delivering business goals with the department manager;
2. **Platform Architecture**: Led architecture, implementation, and operation of the CI/CD platform; continuously optimized build, test, and release workflows to significantly shorten delivery cycles; enabled engineers through training and mentoring to improve overall productivity;
3. **Process Governance**: Defined and governed software development lifecycle processes;
4. **Automation & Operations**: Automated environment provisioning and management, and supported developers in debugging runtime issues;
5. **Technology Foresight**: Researched emerging technologies and industry best practices, and drove practical adoption.

### Yahoo! China

**Senior Software Engineer · Platform Technology Department** ｜ Internet / E-commerce ｜ `Feb 2006 — Jun 2008`

As a core member of the Platform Technology Department, I contributed to Yahoo! China's social product line, including new products such as "Zhanzhang Tianxia" and new feature / operation requirements for existing products such as Yahoo Photos.

### WebEx Communications (China) — Hefei

**Software QA Engineer · QA Department** ｜ Software ｜ `Feb 2004 — Feb 2006`

Participated in testing for multiple WebEx Meeting projects, including test planning, test-case design, and execution. Collaborated closely with US-based PMs and developers from other global sites.

### Anhui Baipeng Information Technology Co., Ltd.

**Software Engineer · Technology Department** ｜ Software ｜ `Feb 2003 — Feb 2004`

Mainly responsible for B/S-architecture software development, testing, and maintenance. Also maintained internal network and hardware, including servers.

---

## Project Experience

### SC GenAI Splunk — Supply Chain Alert Monitoring `Jan 2026 — Apr 2026`

> **Role**: Contributor
> **Stack**: Python · FastAPI · LangGraph · LangChain · Azure OpenAI · LangSmith · PyYAML · OAuth2 · Webex Adaptive Card · Snowflake · SMTP · pytest · Docker · Jenkins · Conjur

**📌 Project Background**

Supply Chain **GenAI Splunk Alert Monitoring Platform** (centrally operated by the platform team). It receives Splunk alerts via **FastAPI Webhook**, then performs app identification, pattern matching, and **LangGraph AI Agent** analysis, and finally sends intelligent notifications through **Email + Webex** dual channels.

**🎯 My Contributions**

- **Webex Adaptive Card and KB Analysis**: Upgraded **Control-M** and generic Splunk alert notifications to **Webex Adaptive Cards** (structured display for job details, Oracle exceptions, collapsible sections, etc.); integrated **Confluence Wiki troubleshooting summaries** into cards; fixed **OAuth2 exact-match** validation issue;
- **AI Monitoring Metrics Integration**: Built a **CronJob** to periodically pull **Run/Trace** data from **LangSmith** and write into **Snowflake**, enabling observability and metric analytics for the AI alert pipeline;
- **Splunk Alert Custom Fields**: Added `custom_fields` support in component-level YAML to dynamically extract business fields (e.g., `namespace`, `pod`) from Splunk `result`, and propagate them end-to-end across **Webhook → alert_analyzer → Webex / Email**.

### GenAI Self Service Hub Service `Feb 2026 — Apr 2026`

> **Role**: Contributor
> **Stack**: Python 3.11+ · FastAPI · Pydantic · PyYAML · Alation REST API · boto3 · S3 · Poetry · pytest

**📌 Project Background**

Backend microservice of Cisco GenAI platform's **Self Service Hub**, providing self-service capabilities such as knowledge base, documents, Agent Workflow, and MCP Registry for business teams. I was responsible for building the **Semantic Layer** capability: integrating enterprise data catalog **Alation**, auto-generating **Semantic Model YAML** from selected component/app/table metadata, and persisting outputs into object storage for downstream GenAI consumption.

**🎯 My Contributions**

- **Alation Metadata Integration**: Implemented **Alation Cloud REST Client** (token refresh, table search, column-level metadata retrieval), and mapped Alation table/column descriptions, data types, and primary-key info into structured YAML generation specs;
- **Semantic YAML Generation**: Built semantic-model assembly and validation with **PyYAML** (dimension/fact split, relations, Verified Queries, etc.), and exposed FastAPI `/generate` to one-click generate POC-aligned Semantic Model YAML from selected databases/tables;
- **Persist YAML to S3**: Implemented validation and persistence pipeline, uploading generated YAML to **S3** with component/app naming and versioning strategy to support multi-environment deployment and downstream GenAI pipelines;
- **API and Quality Assurance**: Delivered REST endpoints including `/generate`, `/validate`, and `/save` with Pydantic schemas; added **pytest** unit tests (Alation enrichment, YAML builder, route layer) to ensure stability of metadata ingestion and YAML generation.

### Cisco IT Supply Chain GenAI Platform `Jun 2025 — Jan 2026`

> **Role**: Contributor
> **My Stack**: Python · Streamlit · Duo SSO · GPU (CUDA) · OpenStack · HTTPS / TLS · Poetry · CI/CD · Ansible · Linux VM
> **Platform Stack (Team)**: Python · FastAPI · Streamlit · LangChain · LangGraph · Azure OpenAI · RAG · MCP

**📌 Project Background**

The team built an internal AI Q&A and automation platform for Cisco Supply Chain based on **RAG + LangGraph**, integrating multiple internal enterprise systems to deliver "intelligent Q&A + business automation" capabilities. As a contributor, I took ownership of multiple foundational capabilities.

**🎯 My Contributions**

- **Enterprise SSO Integration**: Integrated **Duo SSO** with Streamlit UI, filling the platform's previous gap in unified authentication and improving enterprise security compliance;
- **GPU Enablement**: Installed and configured **NVIDIA GPU drivers** on production VMs to provide compute foundation for **embedding vectorization acceleration**, significantly improving KB retrieval performance;
- **Multi-Environment HTTPS / Certificate Deployment**: Deployed HTTPS and TLS certificates across **Dev / Stage / Prod** environments on **OpenStack**, unifying transport encryption standards and meeting enterprise security requirements;
- **Dependency Management and CI/CD**: Migrated project dependency management from pip to **Poetry** (ensuring reproducible builds and locked dependencies), and built **CI/CD pipelines** for automated build, test, and deployment to shorten delivery cycles;
- **Ansible Automation Foundation**: Completed **Ansible** setup on dev hosts to establish automation capabilities across multiple VMs, paving the way for reusable batch operations through playbooks.

### API Maestro — Cisco IT Hackathon 2025 `May 2025 — Jun 2025`

> **Role**: Solo Developer (Cisco IT Hackathon 2025)
> **Stack**: Python 3.12 · LangChain · LangGraph · FastMCP · Streamlit · FastAPI · OpenAPI / Swagger · BridgeIT · Docker Compose · PyYAML · Requests · ReAct Agent

**📌 Project Background**

**API Maestro** is my **solo-built** submission for Cisco IT Hackathon 2025, targeting the use case of "driving any OpenAPI application through natural language." The system automatically parses OpenAPI/Swagger specs, understands endpoints/parameters/workflows, and translates conversational commands (e.g., "query latest 10 orders", "send notifications to all active users") into precise HTTP API calls with readable responses, enabling non-technical users to operate API-driven systems with zero code.

**🎯 Responsibilities**

- **Solo Delivery from 0 to 1**: Independently completed architecture, core coding, demo, and containerized deployment, delivering a fully demoable system in about two months;
- **Agent Core Architecture**: Built NL → API orchestration pipeline using **LangGraph ReAct Agent**, dynamically mapping OpenAPI endpoints into LangChain tools and using internal LLM via **BridgeIT** for parameter extraction and API execution;
- **Dynamic OpenAPI Learning**: Implemented OpenAPI parsing and endpoint tooling, supporting runtime loading/switching of API specs without hand-writing integration code for each endpoint;
- **MCP Server Evolution**: Refactored original agent capabilities into a **FastMCP**-based **Model Context Protocol** service exposing standardized tools such as `load_spec`, `execute_api`, and `process_request`, enabling integration with Cursor/IDE MCP clients;
- **Multi-Channel Access**: Delivered **Streamlit** conversational UI (spec upload, session management, streaming interaction) and **FastAPI HTTP bridge**, plus a Mock API server for demo and integration testing;
- **Engineering Delivery**: Completed **Docker Compose** one-command deployment, environment-variable security management (`dotenv`), CLI entry points (`api-maestro-server` / `api-maestro-ui`), and MCP stdio test scripts to support hackathon demo and future scaling.

### Supply Chain Finance Miscellaneous Tools `Sep 2023 — Present`

> **Stack**: Java 21 · Spring Boot 4.0 · Spring Security · OAuth2 · Cisco LDAP · OpenAPI v3 · Angular 21 · Nx · Cisco Design System · Gradle (Kotlin DSL) · OpenRewrite · Docker (Chainguard) · Jenkins · SonarQube · Spinnaker · Conjur

**📌 Project**

A lightweight tools platform for the Supply Chain Finance team, hosting multiple high-frequency internal business tools (**Item Cost Download**, **Cost Tag Upload**, etc.), covering Excel/CSV bulk uploads, cost-data download, and email notification scenarios. Unified authentication and fine-grained role-based access control (General User / Cost Manager, etc.) are implemented through Cisco LDAP.

**🎯 Responsibilities**

- **Monolithic Unified Architecture**: Co-developed Angular SPA + Spring Boot in one repo, orchestrated end-to-end frontend/backend build with **Gradle (Kotlin DSL)**, and produced a single executable Jar;
- **Enterprise Security + Cisco Design System**: Implemented SSO and RBAC dual checks with **Spring Security + OAuth2 + Cisco LDAP**; aligned frontend with Cisco design standards and delivered common components (file uploader, session-expiry modal, etc.);
- **API-First**: Maintained OpenAPI v3 contracts and code generation (Spring interfaces + TypeScript SDK) to structurally eliminate frontend-backend contract drift;
- **Continuous Modernization**: Drove major upgrades such as **Spring Boot 2 → 3.5 → 4.0** and **Angular → 21** with **OpenRewrite**, and codified reusable migration patterns;
- **DevSecOps**: Built **Jenkins + SonarQube Quality Gate + SAST + Spinnaker** automated delivery pipeline; migrated images to **Chainguard** secure base images; integrated **Conjur** secret management; maintained 8 environment profiles and led production credential rotation and vulnerability remediation.

### CART-Kafka — CBM Data Ingestion Microservice `Jul 2024 — Present`

> **Stack**: Java 21 · Spring Boot 4.0 · Spring Kafka · Spring Data JPA · Oracle · OAuth2 · Conjur · Maven · OpenRewrite · Docker · Jenkins (Golden Pipeline) · SonarQube · Spinnaker · OpenShift

**📌 Project**

An upstream data-ingestion microservice for the CART platform, deployed independently from the CART main app. It consumes **CBM (Component Business Model) Kafka streams** from Oracle Cloud and replicates component business data into enterprise ESM **XXCART schema** interface tables in near real-time (10+ core finance tables including GL, AP, PO, RCV, Material Transactions, XLA, etc.), providing raw data foundation for CART cost analysis and reconciliation.

**🎯 Responsibilities**

- **Architecture and Leadership**: As Tech Lead, drove the project from 0 to 1, establishing a layered design of "independent microservice + **dual Oracle data sources (ESM / CG1)**" to decouple data ingestion and business computation;
- **Core Code Contribution**: Implemented Kafka Consumer framework, dual data-source auto-configuration, CBM entity model and persistence layer, and processing logs;
- **Batch Insert Performance Optimization**: Combined Hibernate `jdbc.batch_size` + `order_inserts` / `order_updates` with **batch-sliced `saveAll`** strategy to ensure real Hibernate batching (avoiding row-by-row flush), significantly improving Oracle write throughput for large CBM payloads;
- **Continuous Modernization**: Drove multi-round upgrades via **OpenRewrite** (**Spring Boot 2.x → 3.2 → 3.5 → 4.0**, **Java → 21**, with Confluent Kafka 7.6 compatibility), and codified reusable migration patterns;
- **DevSecOps**: Completed **Cert Auth → OAuth2** migration and **Conjur** secret integration; implemented quality gates with **SonarQube Quality Gate + SAST + Dependabot + PMD/CPD + JaCoCo**; migrated build pipeline to Cisco IT **Golden Pipeline** for unified build, scanning, image publishing, and **Spinnaker** deployment;
- **Multi-Environment and Team Enablement**: Maintained 9 environment profiles, led production certificate rotation and vulnerability remediation (Qwiet / Tomcat CVEs, etc.), acted as primary PR reviewer, and mentored team members on large feature delivery.

### CART — Cost Analysis and Reconciliation Tool `Sep 2020 — Present`

> **Stack**: Java 21 · Spring Boot 4.0 · Spring Security · OAuth2 · Cisco LDAP · Spring Data JPA · Oracle · Redis · OpenAPI v3 · Apache POI · AWS S3 / Cisco COS · Micrometer Tracing · OWASP ESAPI · Gradle · OpenRewrite · Angular 21 · AG Grid · Highcharts · Cisco CUI · Docker (Nginx) · Jenkins · SonarQube · Spinnaker · Conjur · OpenShift

**📌 Project**

A core Supply Chain Finance system that automates day-end **cost variance analysis** and **three-source reconciliation across Sub-Ledger (CG1) / General Ledger (CFN) / Cloud (CBM)**, and pushes allocated/unallocated data to **DFA / ICPM** reporting systems. Frontend and backend are deployed independently (`cart-api` + `cart-ui` dual repos), with 22 controllers / 43 services in backend and 17 business modules in frontend, making it one of the largest real business systems in the department.

**🎯 Responsibilities**

- **Full-Stack Scaffolding and Architecture**: Led setup of a frontend/backend-separated full-stack scaffold based on successful patterns from previous projects, and evolved it into a shared reference implementation;
- **Enterprise Security**: Implemented SSO, RBAC, and service-to-service authorization via **Spring Security + OAuth2 Client + Resource Server + Cisco LDAP**, and integrated **OWASP ESAPI** for input-security hardening;
- **Object Storage Design and Implementation**: Designed and implemented **Cisco COS / AWS S3** integration with a unified object-storage abstraction (including bucket lifecycle policy management), covering large-file upload, archival, and download scenarios;
- **Continuous Modernization**: Drove major upgrades via **OpenRewrite** (**Spring Boot to 4.0, Java to 21, Angular to 21**) and integrated **Micrometer Tracing + Brave** for distributed tracing;
- **DevSecOps and Infrastructure**: Built **Jenkins + SonarQube Quality Gate + SAST + PMD + JaCoCo + Spinnaker** delivery pipeline and **OpenShift** multi-DC runtime setup; integrated **Conjur** for secret management; maintained multi-environment profiles and led production credential rotation and vulnerability fixes.

### Earlier Projects (2003 — Present)

| Period                | Project                                | Role & Highlights                                                                                                                                                             |
| --------------------- | -------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `Jul 2018 — Present`  | **RCE — Royalty Calculation Engine**  | **Tech Lead** (9-person global team); Cisco core royalty system (30+ modules); Cloud Native + API-First; **first Blue-Green zero-downtime deployment in department**; Nx Monorepo and **`@scf/common-lib`** shared library; modernized to Spring Boot 4 / Java 21 / Angular 21 via OpenRewrite |
| `Nov 2014 — Jan 2018` | **Self Service Model**                 | Optimized build/deployment workflows and delivered **Build-Once / Deploy-Many** with Dev/QA self-service; built Continuous Delivery Portal; drove process design, architecture selection, POC, and team enablement |
| `Nov 2013 — Oct 2014` | **Continuous Delivery Transformation** | Cisco IT CDT unified delivery platform; led migration of Git/Jenkins/Artifactory to new platform; conducted uDeploy/uRelease feasibility and collaborated with US/India platform teams |
| `Jul 2012 — Oct 2013` | **Data Center Migration**              | Migrated applications from WebEx Data Center to Cisco Data Center; joined architecture discussions and POC in the US; wrote WLST automation scripts to improve environment setup efficiency and reusability |
| `Jul 2011 — Jun 2012` | **Git Migration**                      | CVS to Git migration; completed POC and technical strategy; delivered English Git training to developers; led DevOps members to complete migration on schedule |
| `Sep 2009 — Oct 2010` | **Continuous Integration**             | Refactored CruiseControl scripts; led migration from CruiseControl to Hudson (Jenkins)                                                                                      |
| `Aug 2008 — Aug 2009` | **WebEx Elvis**                        | Maintained internal lifecycle management system (PHP + MySQL); bug fixes and feature development                                                                             |
| `Jul 2008 — Aug 2009` | **Myify**                              | Lead developer of a PHP / Zend / Dojo task-tracking web app; delivered 90%+ of code                                                                                         |
| `Oct 2007 — May 2008` | **Y!China NBS Platform**               | Lead frontend engineer for Yahoo's site-builder platform; drove Symfony adoption and backend admin modules                                                                   |
| `May 2007 — Jul 2007` | **Y!China Blog UGC**                   | Frontend architecture and development for Yahoo's blog aggregation (PHP + PostgreSQL)                                                                                        |
| `Feb 2006 — May 2007` | **Y!China Photo Service**              | Lead frontend engineer for Yahoo Photos; worked with operations to grow PV from <1M to 20M+                                                                                 |
| `Oct 2003 — Feb 2004` | **National Foreign Investment Annual Inspection System** | .NET system jointly launched by China's Ministry of Commerce and 7 ministries                                                                                                |

---

## Side Projects

### RCE UI Rewrite in React `Apr 2026 — May 2026`

> **Stack**: React 19 · TypeScript 6 · Vite 8 · Vitest · Playwright · React Router 7 · TanStack Query v5 (with persistence) · AG Grid Enterprise · Orval (OpenAPI → React Query hooks) · OIDC Client / React OIDC Context · Cisco Atmosphere Elements React 4.0 · Harbor · Tailwind CSS · pnpm Monorepo · Docker · AI Harness (Cursor / Claude Code / Copilot)

**📌 Background & Motivation**

This was a personally led exploratory initiative with **multiple compounding goals**:

- **Validate Vibe Coding and apply AI Harness in practice**: Use AI Coding Agent as the primary "hands-on" implementer while the human acts as architect and quality gatekeeper, to validate feasibility and productivity boundaries of this emerging collaboration model in a high-complexity cross-stack rewrite; meanwhile, operationalize **AI Harness methodology** (prompt design, context management, skill orchestration, human-AI division of labor, quality checks) and accumulate reusable engineering know-how;
- **Align UI/UX with latest standards**: The original RCE frontend was based on early Angular and no longer aligned with current Cisco Design System; this project modernized visual and interaction experience (upgraded to Atmosphere v4);
- **Improve code quality**: Re-architected previously tightly coupled codebase with React 19 + strict TypeScript, establishing clearer module boundaries and component contracts;
- **Optimize performance**: Leveraged React 19 capabilities (concurrent rendering, automatic batching, etc.) to improve initial load and runtime performance.

**🎯 Impact**

- **Full Rewrite**: Independently completed full rewrite of **22 business pages** in about two months, proving the feasibility of Vibe Coding for end-to-end architecture migration;
- **Reusable Scaffold and Methodology**: Produced a modern frontend scaffold and reference implementation based on **pnpm Monorepo + React 19 + Vite + Orval + TanStack Query**; authored engineering docs such as **React vs Angular comparison, branching strategy, and release checklist**, providing templates for future React projects;
- **Enterprise Capability Fit**: Implemented **OIDC SSO**, **AG Grid Enterprise**, **runtime multi-environment configuration injection**, **Dockerized deployment**, and **Playwright E2E tests**, bringing the rewrite to production-ready level;
- **AI Harness Engineering**: Combined **Superpowers plugin** and **custom skills** to harness AI Coding Agents into reusable workflows (TDD, systematic debugging, code review, plan execution, etc.), significantly improving controllability and output quality for complex tasks.

### Playwright Test Automation `2025 — 2026`

> **Stack**: Playwright · TypeScript · Page Object Model · monocart-reporter · oracledb · TA JWT (RSA) · DUO OIDC · OAuth2 JWT · Express · Multer · Docker · Jenkins · Conjur · Node.js

**📌 Background & Motivation**

Multiple team projects (RCE, CART, Supply Chain Finance Tools, etc.) lacked E2E automation for a long time. Quality assurance heavily relied on manual regression, which constrained release cadence and increased regression cost. I initiated this effort to introduce a **modern, reusable, cross-project** E2E automation system.

**🎯 Impact**

- **Cross-Project Test Framework**: Built a reusable cross-application test framework from scratch with **Playwright + TypeScript + Page Object Model**, covering **CART (E2E + API)** and **RCE (E2E / Regression / Smoke)** matrices, and delivered reusable utilities including AG Grid automation, direct Oracle DB validation, and email notifications;
- **Enterprise Authentication Adaptation**: Designed and implemented **TA JWT (RSA-signed) test authentication** aligned with production apps (private key hosted in **Conjur** and securely injected in CI), fully solving enterprise SSO login blockers in unattended automation;
- **CI/CD Integration and Containerized Execution**: **Built and maintained dedicated Playwright Docker images** (including Oracle Instant Client and dependencies) for deterministic runtime; orchestrated with **Jenkins pipeline + parameter matrix (app / env / project / tag)** to auto-run regressions on every PR/release, significantly reducing regression cost and accelerating release cycles;
- **Enterprise Test Reporting Service**: Built a self-hosted **Test Report Server** (Express + Multer), protected report browsing with **DUO OIDC** and upload APIs with **OAuth2 JWT**, deployed via Docker, and centralized historical reports for trend tracking and regression analysis;
- **Cross-Project Reuse and Standardization**: Adopted as a reusable template by multiple team projects and helped standardize E2E testing practices.

### Video Downloader `Jun 2025 — Jul 2025`

> **Stack**: Python 3.12 · yt-dlp · PyYAML · Docker · Docker Compose · GitHub Actions · GHCR · Bash
> **Open Source Repo**: [github.com/zpkx/video-downloader](https://github.com/zpkx/video-downloader) (public personal GitHub)

**📌 Background & Motivation**

A personal side project, **fully open-sourced on my personal GitHub**, designed to solve multi-platform bulk video download and archival pain points: manually maintaining URL lists, organizing outputs by category, avoiding rate limits, and enabling "configure once, auto-download" workflows on NAS / container environments without repeated manual commands.

**🎯 Impact**

- **Core Download Engine**: Encapsulated yt-dlp into a `VideoDownloader` class supporting single URL, multiple URLs, and category-based bulk download, plus non-destructive modes such as **info-only / dry-run**;
- **YAML-Driven Configuration**: Used `urls.yaml` for category folders, quality, delay ranges, and URL lists; used `config.yaml` for centralized yt-dlp options (subtitles, merge format, retry strategy, etc.), with auto-discovery loading from `config/`;
- **Dockerization and Automation**: Delivered **Dockerfile + docker-compose** with watcher/oneshot/manual service modes to trigger downloads automatically when `urls.yaml` changes; supports configurable **UID/GID** to avoid mounted-volume permission issues;
- **Ops and Release**: Added helper scripts such as `docker-run.sh`, layered logging (`logs/video_download.log`), and automatic cookie detection; used **GitHub Actions** to build and publish images to **GHCR** (`ghcr.io/zpkx/video-downloader`) for long-running NAS deployments.

---

## Education

| Period            | School                          | Major                  | Degree      |
| ----------------- | ------------------------------- | ---------------------- | ----------- |
| `1999/9 — 2003/7` | Hefei University of Technology  | Computer Applications  | Bachelor's  |
| `1996/9 — 1999/7` | No.2 High School of Anqing, Anhui | —                    | High School |

---

## Certifications

| Year     | Certification                                                                    | Note |
| -------- | -------------------------------------------------------------------------------- | ---- |
| `2020/5` | AWS Certified Solutions Architect – Associate                                    | 977  |
| `2015/1` | Certified Scrum Master                                                           | —    |
| `2014/6` | Oracle Certified Associate, Oracle WebLogic Server 11g System Administrator      | —    |
| `2003/1` | CET-4 (College English Test Band 4)                                              | —    |

---

## Languages

| Language    | Proficiency                     |
| ----------- | ------------------------------- |
| **English** | Listening, Speaking, Reading, Writing (Fluent) |

