# Argo CD GitOps Pipeline on AWS EKS

[![Terraform](https://img.shields.io/badge/IaC-Terraform-blueviolet?style=flat-square&logo=terraform)](https://www.terraform.io/)
[![Helm](https://img.shields.io/badge/Package_Manager-Helm-0f1689?style=flat-square&logo=helm)](https://helm.sh/)
[![Argo CD](https://img.shields.io/badge/GitOps-Argo%20CD-ef6c00?style=flat-square&logo=argo)](https://argo-cd.readthedocs.io/)
[![GitHub Actions](https://img.shields.io/github/actions/workflow/status/LMorrison-cyber/argo-cd-gitops-pipeline/terraform.yml?label=GitHub%20Actions&style=flat-square&logo=githubactions)](https://github.com/LMorrison-cyber/argo-cd-gitops-pipeline/actions)
[![MIT License](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](LICENSE)

> A complete CI/CD-ready GitOps pipeline using Argo CD and Terraform to deploy an EKS cluster, configure Helm apps, and automate infrastructure.

## 🔧 Tools Used
- **Terraform** for infrastructure provisioning
- **Argo CD** for GitOps deployment
- **Helm** for app packaging
- **GitHub Actions** for CI

## 📂 Project Structure
```
argo-cd-gitops-pipeline/
├── terraform/            # Terraform for EKS + VPC
├── helm/                 # Helm charts (e.g., NGINX)
├── argocd/               # Argo CD app manifests
├── scripts/              # Setup/init scripts
├── .github/workflows/    # GitHub Actions CI/CD
└── README.md             # Project overview
```
