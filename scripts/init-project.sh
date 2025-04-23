#!/bin/bash
echo "[INFO] Initializing Terraform..."
cd terraform
terraform init
terraform apply -auto-approve
