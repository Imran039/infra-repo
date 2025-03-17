#!/bin/sh
set -e  # Exit immediately if any command fails

# Navigate to the Terraform directory
cd "$(dirname "$0")"

# Initialize Terraform
terraform init

# Plan & Apply Terraform Configuration
terraform plan -out=tfplan
terraform apply -auto-approve tfplan
