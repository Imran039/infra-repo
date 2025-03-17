#!/bin/sh
set -e  # Exit on error

# Initialize Terraform
terraform init

# Apply Terraform configuration
terraform apply -auto-approve
