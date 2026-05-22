# Peng Zhang

> **IT Software Engineering Technical Leader** ｜ 20+ Years of Experience ｜ Hefei, China

📱 +86 189-5519-9945 ｜ ✉️ [zpkx@qq.com](mailto:zpkx@qq.com)

---

## Professional Summary

I bring strong self-management, a proactive learning mindset, and solid hands-on capability. A broad knowledge base and analytical thinking enable me to dive deep into complex technical challenges. With many years of experience and accumulated expertise in the IT and software industry, I have built rich cross-domain project experience.

Within teams, I serve as a technical backbone and leader, driving the team to achieve shared goals. Fluent in English (reading, writing, speaking, and listening), I excel at cross-functional communication and coordination.

I am highly self-driven and committed to continuous improvement. I proactively explore and research frontier technologies, striving for excellence in every task. With self-discipline and a goal-oriented approach, I ensure consistent delivery of high-quality results while fostering team innovation and growth.

---

## Technical Expertise


| Category                 | Technologies                                                             |
| ------------------------ | ------------------------------------------------------------------------ |
| **AI & Intelligence**    | LangChain, RAG, MCP, AI Agent, AI Harness (Cursor, Claude Code, Copilot) |
| **Backend**              | Java + Spring (Boot, Cloud), Python, Node.js                             |
| **Frontend**             | Angular, React                                                           |
| **Data**                 | SQL (Oracle, MySQL, PostgreSQL), NoSQL (Redis, MongoDB)                  |
| **Architecture & Cloud** | Monolithic, Microservices, Cloud Native (OpenShift, Docker, Kubernetes)  |
| **DevSecOps**            | CI/CD, Jenkins, SonarQube, Security Scanning, Ansible                    |


---

## Work Experience

### Cisco Systems (China) Research & Development Co., Ltd. — Hefei

**IT Software Engineering Technical Leader** ｜ Telecom / Networking ｜ `Jul 2008 — Present`

**▸ Supply Chain IT Source & Finance Team · Tech Lead**

1. **Team Leadership** — Lead a cross-border India + China engineering team to deliver multiple cloud-based IT platforms for Cisco Supply Chain;
2. **Architecture Design** — Drive Cloud Native architecture design and validation; establish team-wide microservices and cloud-native technical standards;
3. **Technical Stewardship** — Build foundational frontend / backend frameworks and reference implementations to ensure delivery consistency across the team;
4. **People Development** — Lead technical and business training, mentor developers, and resolve complex production and design issues;
5. **Technical Decision-Making** — Drive department-level technical decisions and standardization, producing reusable solutions for cross-team adoption;
6. **AI Adoption** — Drive AI adoption within the team, leveraging AI Harness, Coding Agents, and RAG to improve developer productivity and code quality.

**▸ Cloud Software Team · Tech Lead**

1. **Team Building** — Led the team's transformation from configuration management to DevOps; grew team size from 3 (2009) to 15, aligning with department-level Business Goals;
2. **Platform Architecture** — Architected, built, and operated the team's CI/CD platform; continuously **optimized build, test, and release workflows** to significantly shorten the delivery cycle; **upskilled developers** through training and mentorship to lift overall engineering productivity;
3. **Process Governance** — Defined and governed software development lifecycle processes;
4. **Automation** — Implemented automated environment provisioning and management; partnered with developers to debug runtime issues;
5. **Innovation** — Researched emerging technologies and industry best practices, and drove their adoption.

### Yahoo! China

**Senior Software Engineer · Platform Technology Department** ｜ Internet ｜ `Feb 2006 — Jun 2008`

Core member of the Platform Technology team, contributing to Yahoo! China's social product line — including new products (e.g., Zhanzhang Tianxia) and major enhancements to existing products (e.g., Yahoo Photos). Mentored 2 junior engineers throughout their onboarding and ramp-up.

### WebEx Communications (China) — Hefei

**Software QA Engineer** ｜ Software ｜ `Feb 2004 — Feb 2006`

Owned testing for multiple WebEx Meeting projects — test planning, case design, and execution — collaborating closely with US-based PMs and engineers across global sites.

### Anhui Baipeng Information Technology Co., Ltd.

**Software Engineer** ｜ Software ｜ `Feb 2003 — Feb 2004`

Developed, tested, and maintained B/S architecture applications. Maintained internal network infrastructure and servers.

---

## Selected Projects

### Cisco IT Supply Chain GenAI Platform `Jun 2025 — Jan 2026`

> **Role**: Contributor
> **My Stack**: Python · Streamlit · Duo SSO · GPU (CUDA) · OpenStack · HTTPS / TLS · Poetry · CI/CD · Ansible · Linux VM
> **Platform Stack (Team)**: Python · FastAPI · Streamlit · LangChain · LangGraph · Azure OpenAI · RAG · MCP

**📌 Background**

The team built an internal AI Q&A and automation platform for Cisco Supply Chain based on **RAG + LangGraph**, integrated with multiple internal enterprise systems to deliver both intelligent Q&A and end-to-end business automation. As a contributor, I owned several foundational capabilities.

**🎯 My Contributions**

- **Enterprise SSO Integration** — Integrated **Duo SSO** with the Streamlit UI, filling a critical gap in unified user authentication and improving enterprise security compliance;
- **GPU Enablement** — Installed and configured **NVIDIA GPU drivers** on production VMs, providing the compute foundation for **embedding-vectorization acceleration** and significantly improving knowledge-base retrieval performance;
- **Multi-Environment HTTPS / Certificate Deployment** — Configured HTTPS and TLS certificates across **Dev / Stage / Prod** environments on **OpenStack**, unifying transport-layer encryption standards and meeting enterprise security requirements;
- **Dependency Management & CI/CD** — Migrated dependency management from `pip` to **Poetry** (ensuring reproducible builds and dependency locking), and built the **CI/CD pipeline** to automate build, test, and deployment, shortening the delivery cycle;
- **Ansible Foundation** — Installed and configured **Ansible** on the dev host to enable multi-VM automation, paving the way for the team to author reusable Playbooks for batch operations.

### Supply Chain Finance Miscellaneous Tools `Sep 2023 — Present`

> **Stack**: Java 21 · Spring Boot 4.0 · Spring Security · OAuth2 · Cisco LDAP · OpenAPI v3 · Angular 21 · Nx · Cisco Design System · Gradle (Kotlin DSL) · OpenRewrite · Docker (Chainguard) · Jenkins · SonarQube · Spinnaker · Conjur

**📌 Project**

A lightweight tools platform for the Supply Chain Finance team, hosting multiple high-frequency internal business tools (**Item Cost Download**, **Cost Tag Upload**, and more) — covering Excel / CSV bulk uploads, cost-data downloads, and email notifications. Authentication unified via **Cisco LDAP** with role-based access control (General User / Cost Manager, etc.).

**🎯 Responsibilities**

- **Monolithic Unified Architecture** — Angular SPA + Spring Boot in a single repo; orchestrated end-to-end frontend / backend build through **Gradle (Kotlin DSL)**, producing a single deployable Jar;
- **Enterprise Security + Cisco Design System** — Implemented SSO and dual-layer RBAC (frontend guards + backend authorization) on **Spring Security + OAuth2 + Cisco LDAP**; aligned the frontend with Cisco Design System and delivered shared components (file uploader, session-expiry modal, etc.);
- **API-First** — Maintained the OpenAPI v3 contract and code-generation pipeline (Spring server stubs + TypeScript SDK) to structurally eliminate frontend / backend contract drift;
- **Continuous Modernization** — Drove **Spring Boot 2 → 3.5 → 4.0** and **Angular → 21** major version migrations via **OpenRewrite**, codifying a reusable upgrade pattern;
- **DevSecOps** — Built **Jenkins + SonarQube Quality Gate + SAST + Spinnaker** automated delivery pipeline; migrated container images to **Chainguard** hardened base images; integrated **Conjur** for secret management; maintain 8 environment profiles and lead production credential rotation and vulnerability remediation.

### CART-Kafka — CBM Data Ingestion Microservice `Jul 2024 — Present`

> **Stack**: Java 21 · Spring Boot 4.0 · Spring Kafka · Spring Data JPA · Oracle · OAuth2 · Conjur · Maven · OpenRewrite · Docker · Jenkins (Golden Pipeline) · SonarQube · Spinnaker · OpenShift

**📌 Project**

The upstream data-ingestion microservice for the CART platform, deployed independently from the CART main app. Consumes the **CBM (Component Business Model) Kafka stream** from Oracle Cloud and replicates component business data in near-real-time into the **XXCART schema** interface tables in the enterprise ESM system (10+ core finance tables: GL, AP, PO, RCV, Material Transactions, XLA, etc.) — providing the raw data foundation for CART's cost analysis and reconciliation.

**🎯 Responsibilities**

- **Architecture & Leadership** — As Tech Lead, drove the project from inception, establishing the "independent microservice + **dual Oracle data sources (ESM / CG1)**" layered architecture that decouples data ingestion from business computation;
- **Core Implementation** — Built the Kafka consumer framework, dual-datasource auto-configuration, CBM entity model and persistence layer, and the processing-log module — the foundational pieces of the service;
- **Batch Insert Performance Optimization** — Combined Hibernate `jdbc.batch_size` + `order_inserts` / `order_updates` with a **batch-sliced `saveAll`** write strategy to make Hibernate batching actually take effect (eliminating per-row flush), materially improving throughput when writing large CBM payloads to Oracle;
- **Continuous Modernization** — Drove **Spring Boot 2.x → 3.2 → 3.5 → 4.0** and **Java → 21** upgrades via **OpenRewrite** (aligned with Confluent Kafka 7.6), codifying a reusable upgrade pattern;
- **DevSecOps** — Migrated from **Cert Auth to OAuth2**; integrated **Conjur** for secret management; enforced **SonarQube Quality Gate + SAST + Dependabot + PMD/CPD + JaCoCo** coverage gates; migrated the build to Cisco IT's **Golden Pipeline**, unifying build, scanning, image publishing, and **Spinnaker**-based deployment;
- **Multi-Environment & Team Enablement** — Maintain 9 environment profiles; led production certificate rotation and vulnerability remediation (Qwiet / Tomcat CVEs, etc.); serve as primary PR reviewer to safeguard code quality and architectural consistency, mentoring team members through feature delivery.

### CART — Cost Analysis and Reconciliation Tool `Sep 2020 — Present`

> **Stack**: Java 21 · Spring Boot 4.0 · Spring Security · OAuth2 · Cisco LDAP · Spring Data JPA · Oracle · Redis · OpenAPI v3 · Apache POI · AWS S3 / Cisco COS · Micrometer Tracing · OWASP ESAPI · Gradle · OpenRewrite · Angular 21 · AG Grid · Highcharts · Cisco CUI · Docker (Nginx) · Jenkins · SonarQube · Spinnaker · Conjur · OpenShift

**📌 Project**

A core Supply Chain Finance business system that automates the day-end close — **cost variance analysis** and **three-source reconciliation across Sub-Ledger (CG1) / General Ledger (CFN) / Cloud (CBM)** — pushing allocated / unallocated data to upstream management reporting systems (**DFA / ICPM**). Frontend and backend deployed independently (`cart-api` + `cart-ui` dual repos): **22 controllers / 43 services** on the backend and **17 business modules** on the frontend — one of the largest real-world business systems in the department.

**🎯 Responsibilities**

- **Full-Stack Scaffolding & Architecture** — Bootstrapped the full-stack frontend / backend-separated scaffolding leveraging proven patterns from prior projects, evolving it into the reference implementation that several teammates build on;
- **Enterprise Security** — Implemented SSO, RBAC, and service-to-service auth on **Spring Security + OAuth2 (Client + Resource Server) + Cisco LDAP**; integrated **OWASP ESAPI** for input-security hardening;
- **Object Storage Design & Implementation** — Designed and built the **Cisco COS / AWS S3** integration with a unified object-storage abstraction (including bucket lifecycle-policy management), covering large-file uploads, archival, and downloads;
- **Continuous Modernization** — Drove **Spring Boot upgrades through 4.0**, **Java → 21**, and **Angular upgrades through 21** via **OpenRewrite**; integrated **Micrometer Tracing + Brave** for distributed tracing;
- **DevSecOps & Infrastructure** — Designed and built the **Jenkins + SonarQube Quality Gate + SAST + PMD + JaCoCo + Spinnaker** delivery pipeline and the **OpenShift** multi-data-center runtime environment; integrated **Conjur** for secret management; maintain multi-environment configurations and led production credential rotation and vulnerability remediation.

### RCE — Royalty Calculation Engine `Jul 2018 — Present`

> **Stack**: Java 21 · Spring Boot 4.0 · Spring Security · OAuth2 (Client + Resource Server) · JWT (RSA) · Cisco LDAP · Spring Data JPA · Spring WebFlux · Oracle · Redis · Micrometer Tracing · OpenAPI v3 · Apache POI · iText PDF · Gradle · OpenRewrite · Angular 21 · Nx Monorepo · AG Grid · ECharts · Highcharts · PrimeNG · Cisco UI · Docker (Chainguard) · Jenkins · SonarQube · Spinnaker · Conjur · OpenShift

**📌 Project**

Cisco's enterprise-wide business system for calculating **outbound royalty payments to suppliers**, integrated with Cisco Supply Chain, PLM, Finance, and Data Warehouse systems and supporting Cisco's multi-platform architecture. Frontend and backend deployed independently as dual repos (`rcecloud-api` + `rcecloud-ui` Nx Monorepo), covering **30+ business modules** — the largest real-world business system in the department.

**🎯 Responsibilities**

- **Tech Lead** for a 9-person team across **US / India / China**, owning **end-to-end design, development, release, and operations** of the web app; personally built the foundational architecture, application framework, and large portions of business modules while continuously mentoring the team;
- **Cloud Native Architecture** — Full frontend / backend separation with **API-First (OpenAPI v3) code generation**; SSO, RBAC, and stateless auth on **OAuth2 (Client + Resource Server) + LDAP + JWT**; deployed on **OpenShift** private cloud with multi-data-center load balancing, auto-scaling, and self-healing;
- **Zero-Downtime Deployment** — Pioneered **Blue-Green Deployment** — *the first project in the Supply Chain IT department to ship this capability*;
- **Nx Monorepo & Shared Library** — Frontend on **Nx Monorepo** with a publishable shared library **`@scf/common-lib`** (distributed via Cisco Artifactory) that standardizes frontend components and services across the Supply Chain Finance portfolio;
- **Continuous Modernization** — Drove **Spring Boot upgrades through 4.0**, **Java → 21**, and **Angular upgrades through 21** via **OpenRewrite**; integrated **Micrometer Tracing + Brave** for distributed tracing; introduced a **TA JWT (RSA-signed) authentication mechanism for test automation**, solving the long-standing pain of enterprise SSO blocking automated tests;
- **DevSecOps** — Built the **Jenkins + SonarQube Quality Gate + SAST + SCA + PMD + JaCoCo + Dependabot + Spinnaker** delivery pipeline; migrated container images to **Chainguard** hardened base images; integrated **Conjur** for secret management.

### Self Service Model `Nov 2014 — Jan 2018`

> **Stack**: RedHat · Java · Shell

**📌 Project**

Streamlined build and deployment workflows so that Dev and QA teams could self-serve their releases — implementing **Build-Once / Deploy-Many**. Developed a **Continuous Delivery Portal** providing real-time data and statistics across each stage of the delivery pipeline.

**🎯 Responsibilities**

Defined the new process; led architecture design and technical selection; delivered the POC to validate feasibility; planned and tracked the rollout; trained Dev and QA teams on the new process and Portal usage.

### Continuous Delivery Transformation `Nov 2013 — Oct 2014`

> **Stack**: Stash · Enterprise Jenkins · Artifactory Pro · SonarQube · IBM UrbanCode Deploy / Release

**📌 Project**

A Cisco IT-wide CDT initiative providing a unified delivery platform. Migrated legacy Git, Jenkins, and Artifactory to the new platform; adopted **uDeploy** and **uRelease** for automated deployment and release management.

**🎯 Responsibilities**

Led migration planning, mentored team members through the platform transition, evaluated uDeploy / uRelease feasibility, and partnered with platform teams in the US and India.

### Data Center Migration `Jul 2012 — Oct 2013`

> **Stack**: RedHat · WebLogic · Oracle HTTP Server

**📌 Project**

Migrated a portion of applications from the legacy WebEx Data Center to the standard Cisco Data Center.

**🎯 Responsibilities**

Traveled to the US for early-stage architecture discussions and POC delivery. Authored a complete suite of **WLST (WebLogic Scripting Tool)** automation scripts to accelerate environment setup, improving reusability, efficiency, and reducing time / cost.

### Git Migration `Jul 2011 — Jun 2012`

> **Stack**: RedHat · Clustered Tomcat · CVS · Git · Gitblit · gitolite · GitLab

**📌 Project**

Led the team's migration from CVS to Git.

**🎯 Responsibilities**

Delivered the POC, developed the technical strategy and rollout plan, trained developers (in English) on Git, and led DevOps engineers through the migration on schedule.

### Earlier Projects (2003 — 2010)


| Period             | Project                                           | Role / Highlights                                                                                |
| ------------------ | ------------------------------------------------- | ------------------------------------------------------------------------------------------------ |
| `2009/9 — 2010/10` | **Continuous Integration**                        | Refactored CruiseControl scripts; pioneered the migration from CruiseControl to Hudson (Jenkins) |
| `2008/8 — 2009/8`  | **WebEx Elvis**                                   | Maintained internal lifecycle management system (PHP + MySQL); bug fixes and feature work        |
| `2008/7 — 2009/8`  | **Myify**                                         | Lead developer of a PHP / Zend / Dojo task-tracking web app; delivered 90%+ of the codebase      |
| `2007/10 — 2008/5` | **Y!China NBS Platform**                          | Lead frontend engineer for Yahoo's site-builder platform                                         |
| `2007/5 — 2007/7`  | **Y!China Blog UGC**                              | Frontend architecture and development for Yahoo's blog aggregation (PHP + PostgreSQL)            |
| `2006/2 — 2007/5`  | **Y!China Photo Service**                         | Lead frontend engineer for Yahoo Photos; helped grow PV from <1M to 20M+                         |
| `2003/10 — 2004/2` | **National Foreign Investment Annual Inspection** | .NET-based system for the Ministry of Commerce + 7 ministries                                    |


---

## Side Projects

### RCE UI Rewrite in React  `Apr 2026 — May 2026`

> **Stack**: React 19 · TypeScript 6 · Vite 8 · Vitest · Playwright · React Router 7 · TanStack Query v5 (with persistence) · AG Grid Enterprise · Orval (OpenAPI → React Query hooks) · OIDC Client / React OIDC Context · Cisco Atmosphere Elements React 4.0 · Harbor · Tailwind CSS · pnpm Monorepo · Docker · AI Harness (Cursor / Claude Code / Copilot)

**📌 Background & Motivation**

A personal exploration Initiative pursuing **multiple compounding goals**:

- **Validate the Vibe Coding paradigm & apply AI Harness methodology** — with the AI Coding Agent as the primary "hands-on" coder and the human acting as architect and quality gatekeeper, probe the feasibility and productivity boundary of this emerging human-AI collaboration model (**Vibe Coding**) in a high-complexity, end-to-end cross-stack rewrite; in parallel, **apply the AI Harness methodology in practice** (prompt design, context management, Skill orchestration, human-AI division of labor, quality verification), accumulating engineering experience the broader team can reuse;
- **Align UI/UX with the latest Cisco Design System** — the original RCE frontend, built on an earlier Angular version, had drifted from current Cisco design standards; this rewrite delivered a full visual and interaction modernization (upgraded to **Atmosphere v4**);
- **Lift code quality** — leveraged React 19 + strict TypeScript to refactor previously tightly-coupled code into cleaner module boundaries and component contracts;
- **Performance optimization** — leveraged React 19 features (concurrent rendering, automatic batching) to materially improve first-paint and runtime performance.

**🎯 Impact**

- **Full Business-Page Rewrite** — Single-handedly delivered within ~2 months what traditionally requires a team-level effort: **22 business pages rewritten**, validating Vibe Coding's viability for end-to-end architecture migration;
- **Reusable Scaffold & Methodology** — Produced a reusable **pnpm Monorepo + React 19 + Vite + Orval + TanStack Query** modern frontend scaffold and reference implementation; authored engineering documentation (**React vs Angular diff analysis, branching strategy, release checklist**) to serve as a template for future React projects across the team;
- **Production-Grade Enterprise Adaptation** — Landed **OIDC SSO**, **AG Grid Enterprise**, **runtime environment-config injection**, **Docker containerization**, and **Playwright E2E tests** — taking the rewrite from prototype to production-ready;
- **AI Harness Engineering** — Harnessed AI Coding Agents with the **Superpowers plugin** and a set of **custom-built Skills** to form reusable Agent workflows (covering TDD, systematic debugging, code review, plan execution, etc.), significantly improving the controllability and output quality of AI on complex tasks.

### Playwright Test Automation  `2025 — 2026`

> **Stack**: Playwright · TypeScript · Page Object Model · monocart-reporter · oracledb · TA JWT (RSA) · DUO OIDC · OAuth2 JWT · Express · Multer · Docker · Jenkins · Conjur · Node.js

**📌 Background & Motivation**

Multiple team projects (RCE, CART, Supply Chain Finance Tools) lacked E2E automation; quality relied heavily on manual regression, throttling release cadence and inflating regression cost. I initiated this effort to introduce a **modern, reusable, cross-project E2E automation system** for the team.

**🎯 Impact**

- **Cross-Project Framework** — Built a cross-application automation framework from scratch on **Playwright + TypeScript + Page Object Model**, covering **CART (E2E + API)** and **RCE (E2E / Regression / Smoke)** test matrices, with reusable utilities for **AG Grid automation, direct Oracle DB validation, and email notifications**;
- **Enterprise Auth Integration** — Designed and implemented a **TA JWT (RSA-signed) authentication mechanism for test execution**, paired end-to-end with the production application (private key managed by **Conjur** and securely injected in CI) — fully solving the long-standing pain of enterprise SSO blocking unattended automation and enabling stable headless test runs;
- **CI/CD Integration & Containerized Execution** — **Built and maintain a custom Playwright Docker image** (bundling Oracle Instant Client and other dependencies) for environment consistency; orchestrated by the **Jenkins pipeline with a parameter matrix (app / env / project / tag)** to automatically run regression on every PR / release — materially reducing manual regression cost and accelerating release cadence;
- **Enterprise-Grade Test Report Service** — Built a self-hosted **Test Report Server** (Express + Multer) protected by **DUO OIDC** for report browsing and **OAuth2 JWT** for the upload API; deployed via **Docker** to centrally host historical reports for trend tracking and regression triage;
- **Cross-Project Adoption** — Adopted as a reusable template by multiple team projects, standardizing the team's E2E testing practices.

---

## Education


| Period            | School                             | Major                 | Degree     |
| ----------------- | ---------------------------------- | --------------------- | ---------- |
| `1999/9 — 2003/7` | **Hefei University of Technology** | Computer Applications | Bachelor's |


---

## Certifications


| Year     | Certification                                                                    |
| -------- | -------------------------------------------------------------------------------- |
| `2020/5` | **AWS Certified Solutions Architect — Associate**                                |
| `2015/1` | **Certified Scrum Master** (CSM)                                                 |
| `2014/6` | **Oracle Certified Associate** — Oracle WebLogic Server 11g System Administrator |


---

## Languages

- **English** — Fluent (working language for 17+ years across US / India / China collaboration)

