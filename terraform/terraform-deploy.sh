#!/bin/sh
set -e  # Exit immediately if a command exits with a non-zero status

# Navigate to the Terraform directory
cd terraform

# Initialize Terraform
terraform init

# Apply Terraform configuration
terraform apply -auto-approve
