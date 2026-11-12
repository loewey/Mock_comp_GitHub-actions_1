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

## Architecture

\`\`\`
Developer Push --> GitHub Actions --> Security Scans --> Docker Build --> AWS Deployment
                        |
                        ├── SAST (CodeQL)
                        ├── SCA (Trivy)
                        ├── Secret Scan (Gitleaks)
                        └── IaC Scan (Trivy)
\`\`\`

## Security Findings

The main purpose of this projecet is to increase my awareness in tools such as SCAs therefore this project intentionally includes vulnerabilities:

### SAST Findings (CodeQL)
- SQL Injection in user lookup function
- Command Injection in ping endpoint
- Server-Side Template Injection (SSTI)

### SCA Findings (Trivy)
- CVE-2020-14343 in PyYAML 5.4.1 (Critical)
- Multiple vulnerabilities in Flask 2.0.1

### IaC Findings (Trivy)
- S3 bucket without encryption
- Security group with overly permissive rules

## Skills Demonstrated

From building and maintaining this project I have learned some of the following: 

- **CI/CD**: GitHub Actions workflow design
- **SAST**: CodeQL query configuration
- **SCA**: Trivy vulnerability scanning
- **Containers**: Docker security best practices
- **IaC**: Terraform with AWS
- **Secret Management**: Gitleaks configuration

## If you wish to add upon/ use my repo ->

\`\`\`bash
# Clone the repository
git clone https://github.com/YOUR_USERNAME/devsecops-pipeline-project-1.git

# The pipeline runs automatically on push
# View results in the Actions tab
\`\`\`

# Resultant reports 

Trivy's SLA scan: 
<img width="1084" height="679" alt="image" src="https://github.com/user-attachments/assets/4097dc5b-5965-47c7-aabf-49a2af40fa4b" />


CodeQLs SAST report: 
<img width="691" height="482" alt="image" src="https://github.com/user-attachments/assets/975ecb2d-1723-4138-939d-e101b8eb94af" />

GitLeeks Report: 

<img width="615" height="177" alt="image" src="https://github.com/user-attachments/assets/03654b87-484e-4e73-bd00-4ac28e74fb77" />




