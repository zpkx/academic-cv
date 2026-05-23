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
        ### SC GenAI Splunk — Supply Chain Alert Monitoring `Jan 2026 — Apr 2026`
        
        > **Stack**: Python · FastAPI · LangGraph · Azure OpenAI · Snowflake · Webex Adaptive Card
        
        Splunk alert monitoring platform that receives alerts via FastAPI Webhook, applies pattern matching and LangGraph AI Agent analysis, then sends intelligent notifications through email and Webex.
        
        - Upgraded Control-M and Splunk alerts to structured Webex Adaptive Cards.
        - Integrated Confluence troubleshooting summaries and wrote LangSmith Run/Trace metrics to Snowflake.
        - Added custom_fields support for dynamic business-field extraction from Splunk results.
        
        ---
        
        ### GenAI Self Service Hub Service `Feb 2026 — Apr 2026`
        
        > **Stack**: Python · FastAPI · Alation API · PyYAML · S3
        
        Backend microservice for Cisco GenAI Self Service Hub; I owned the Semantic Layer capability.
        
        - Integrated Alation enterprise data catalog for table and column metadata.
        - Generated Semantic Model YAML and persisted outputs to S3 for downstream GenAI use.
        - Delivered generate, validate, and save APIs with pytest coverage.
        
        ---
        
        ### Cisco IT Supply Chain GenAI Platform `Jun 2025 — Jan 2026`
        
        > **Stack**: LangChain · LangGraph · Streamlit · Duo SSO · GPU · Ansible
        
        Internal AI Q&A and automation platform for Cisco Supply Chain based on RAG + LangGraph.
        
        - Delivered Duo SSO, GPU vector-search acceleration, HTTPS/TLS, Poetry, and CI/CD foundations.
        - Built Ansible automation foundation for multi-VM operations.
        
        ---
        
        ### API Maestro — Cisco IT Hackathon 2025 `May 2025 — Jun 2025`
        
        > **Stack**: LangGraph · MCP · Streamlit · FastAPI · OpenAPI
        
        Solo-built natural-language interface for OpenAPI applications that parses API specs and executes business requests automatically.
        
        - Dynamically mapped OpenAPI endpoints into LangChain Tools with a LangGraph Agent.
        - Evolved the solution into a FastMCP Server for Cursor / IDE MCP clients.
        
        ---
        
        ### CART — Cost Analysis and Reconciliation Tool `Sep 2020 — Apr 2026`
        
        > **Stack**: Spring Boot · Angular · Oracle · OAuth2 · OpenShift
        
        Core Supply Chain Finance system for cost variance analysis and three-source reconciliation.
        
        - Bootstrapped full-stack frontend/backend architecture with SSO, RBAC, and OWASP ESAPI.
        - Designed Cisco COS / AWS S3 object-storage abstraction for large-file workflows.
        - Drove Spring Boot / Java / Angular modernization and DevSecOps delivery.
        
        ---
        
        ### RCE — Royalty Calculation Engine `Jul 2018 — Apr 2026`
        
        > **Stack**: Spring Boot · Angular · Nx Monorepo · OpenShift · Jenkins
        
        Cisco core royalty calculation system with 30+ business modules and Blue-Green zero-downtime deployment.
        
        - Tech Lead for a 9-person US / India / China team, owning end-to-end delivery.
        - Delivered the department's first Blue-Green deployment and incubated the @scf/common-lib shared library.

    design:
      columns: '1'
---
