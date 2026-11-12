# Mock_comp_GitHub-actions_1
A mock company with a CI/CD pipeline with that is using the basis of GitHub Actions for it's deployment baseline, CodeQL for it's  SAST (code-as-data scans), Trivy for it's Security Scanner, and Gitleaks to scan secrets in codebase

(Yes All I could think of was Nitro)

# DevSecOps Pipeline for Nitro Company! 

## Project Overview

This repository demonstrates a Prod-ready DevOps pipeline built for **Nitro**, a Series A fintech startup processing $2M in daily transactions. The pipeline implements automated security scanning at every stage of the development lifecycle.

### The Business Context
- **Client**: Nitro Technologies (A Fintech Company - Payment Processing)
- **Challenge**: 3 security incidents in Q4, investors demanding improved security posture
- **Solution**: Attempt to shift-left the security in the form of automated scanning during the development stages. 

## Security Tools Implemented

| Tool | Purpose | Stage |
|------|---------|-------|
| **CodeQL** | Static Application Security Testing (SAST) | Build |
| **Trivy** | Dependency & Container Scanning (SCA) | Build |
| **Gitleaks** | Secret Detection | Pre-commit |
| **Trivy IaC** | Infrastructure as Code Security | Build |

