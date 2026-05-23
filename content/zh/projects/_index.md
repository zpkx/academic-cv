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
        ### SC GenAI Splunk — Supply Chain Alert Monitoring `2026/1 — 2026/4`
        
        > **Stack**: Python · FastAPI · LangGraph · Azure OpenAI · Snowflake · Webex Adaptive Card
        
        基于 FastAPI Webhook 接收 Splunk 告警，经模式匹配与 LangGraph AI Agent 分析后，通过邮件 + Webex 双通道智能通知。
        
        - 将 Control-M / Splunk 告警升级为 Webex Adaptive Card 结构化展示。
        - 集成 Confluence Wiki 故障排查摘要，并将 LangSmith Run/Trace 指标写入 Snowflake。
        - 支持 custom_fields 从 Splunk result 动态提取业务字段。
        
        ---
        
        ### GenAI Self Service Hub Service `2026/2 — 2026/4`
        
        > **Stack**: Python · FastAPI · Alation API · PyYAML · S3
        
        Cisco GenAI 平台 Self Service Hub 后端微服务，本人负责 Semantic Layer 能力建设。
        
        - 对接 Alation 企业数据目录，拉取表与列级元数据。
        - 生成 Semantic Model YAML，并持久化至 S3 供下游 GenAI 使用。
        - 交付 generate、validate、save 等接口与 pytest 测试。
        
        ---
        
        ### Cisco IT Supply Chain GenAI Platform `2025/6 — 2026/1`
        
        > **Stack**: LangChain · LangGraph · Streamlit · Duo SSO · GPU · Ansible
        
        团队基于 RAG + LangGraph 构建供应链内部 AI 问答与自动化平台。
        
        - 完成 Duo SSO、GPU 向量化检索、HTTPS/TLS、Poetry 与 CI/CD 基础能力。
        - 搭建 Ansible 多 VM 自动化运维基础。
        
        ---
        
        ### API Maestro — Cisco IT Hackathon 2025 `2025/5 — 2025/6`
        
        > **Stack**: LangGraph · MCP · Streamlit · FastAPI · OpenAPI
        
        Solo 完成的自然语言驱动 OpenAPI 应用项目，支持解析 API Spec 并自动执行业务请求。
        
        - 基于 LangGraph Agent 将 OpenAPI 端点动态映射为 LangChain Tools。
        - 演进为 FastMCP Server，支持 Cursor / IDE MCP 客户端接入。
        
        ---
        
        ### CART — Cost Analysis and Reconciliation Tool `2020/9 — 2026/4`
        
        > **Stack**: Spring Boot · Angular · Oracle · OAuth2 · OpenShift
        
        供应链财务核心系统，自动化成本差异分析与三源对账，是部门内体量较大的真实业务系统。
        
        - 搭建前后端分离全栈脚手架，接入 SSO、RBAC 与 OWASP ESAPI。
        - 设计 Cisco COS / AWS S3 对象存储抽象并支持大文件场景。
        - 主导 Spring Boot / Java / Angular 大版本升级与 DevSecOps 链路。
        
        ---
        
        ### RCE — Royalty Calculation Engine `2018/7 — 2026/4`
        
        > **Stack**: Spring Boot · Angular · Nx Monorepo · OpenShift · Jenkins
        
        Cisco 专利税核心业务系统，覆盖 30+ 业务模块，支持 Blue-Green 零停机部署。
        
        - 作为 Tech Lead 带领 US / India / China 9 人团队端到端交付。
        - 落地部门首个 Blue-Green 部署，并沉淀 @scf/common-lib 共享库。

    design:
      columns: '1'
---
