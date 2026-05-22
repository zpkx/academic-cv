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
