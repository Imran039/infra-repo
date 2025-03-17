#!/bin/sh
set -e  # Exit immediately if a command fails

# Change to the Terraform directory
cd "$(dirname "$0")"

# Initialize Terraform
terraform init

# Apply Terraform Configuration
terraform apply -auto-approve
