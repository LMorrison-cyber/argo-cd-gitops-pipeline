Argo CD GitOps Pipeline on AWS EKS

[![Terraform](https://img.shields.io/badge/IaC-Terraform-blueviolet?style=flat-square&logo=terraform)](https://www.terraform.io/)
[![Helm](https://img.shields.io/badge/Package_Manager-Helm-0f1689?style=flat-square&logo=helm)](https://helm.sh/)
[![Argo CD](https://img.shields.io/badge/GitOps-Argo%20CD-ef6c00?style=flat-square&logo=argo)](https://argo-cd.readthedocs.io/)
[![GitHub Actions](https://img.shields.io/github/actions/workflow/status/LMorrison-cyber/argo-cd-gitops-pipeline/terraform.yml?label=GitHub%20Actions&style=flat-square&logo=githubactions)](https://github.com/LMorrison-cyber/argo-cd-gitops-pipeline/actions)
[![MIT License](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](LICENSE)

> A complete CI/CD-ready GitOps pipeline using Argo CD and Terraform to deploy an EKS cluster, configure Helm apps, and automate infrastructure.

---

## 🚀 Overview

This project automates infrastructure and application delivery using:

- **Terraform** to provision EKS
- **Helm** to package the NGINX app
- **Argo CD** for GitOps-based deployment
- **GitHub Actions** to trigger app sync on push

Ideal for DevOps engineers seeking to showcase real-world GitOps experience.

---

## 📁 Project Structure

argo-cd-gitops-pipeline/ ├── terraform/ # Terraform for EKS provisioning │ ├── main.tf │ ├── variables.tf │ └── outputs.tf ├── helm/ # Helm chart for the NGINX app │ └── nginx/ │ ├── Chart.yaml │ ├── values.yaml │ └── templates/ │ ├── deployment.yaml │ └── service.yaml ├── argocd/ # Argo CD app definition │ └── app.yaml ├── .github/workflows/ # GitHub Actions for CI/CD │ └── deploy.yml ├── assets/ # Architecture diagram │ └── argo-cd-architecture.png ├── setup.sh # Argo CD install + app deploy script ├── init-project.sh # Bootstrap script to generate structure ├── .gitignore ├── LICENSE └── README.md

---

## ⚙️ Prerequisites

- AWS CLI configured with IAM credentials
- Terraform installed
- `kubectl` and `eksctl` installed
- GitHub repo created
- GitHub secrets for Argo CD login (see below)

---

## 🔧 Getting Started

### 1. Bootstrap the Project


./init-project.sh

2. Provision EKS with Terraform

cd terraform
terraform init
terraform apply

3. Install Argo CD and Deploy Helm App

cd ..
./setup.sh

✅ GitHub Actions CI/CD
This repo includes a GitHub Actions workflow that syncs your Argo CD app on every push to main.

Required Secrets

Secret Name Description
ARGOCD_SERVER   Argo CD URL/IP (e.g. 35.123.45.6)
ARGOCD_USERNAME Typically admin
ARGOCD_PASSWORD Initial admin password (see below)

🧰 Tools Used
Terraform for EKS infrastructure

Helm for app templating

Argo CD for GitOps syncing

GitHub Actions for CI/CD automation

NGINX as a demo app

📸 Architecture
The pipeline flows as follows:

Terraform → EKS → Argo CD → Helm App → GitHub Actions (auto-sync)



🔐 Argo CD Access
To get the admin password for Argo CD, run:


kubectl -n argocd get secret argocd-initial-admin-secret \
  -o jsonpath="{.data.password}" | base64 -d && echo
To port-forward the Argo CD UI:


kubectl port-forward svc/argocd-server -n argocd 8080:443
Access the UI at: https://localhost:8080

🌐 Connect with Me
If you're a recruiter or team looking for someone with strong GitOps and DevOps skills — let's connect!

LinkedIn

📄 License
This project is licensed under the MIT License. See the LICENSE file for details.
