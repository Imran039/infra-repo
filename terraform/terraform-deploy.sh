#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

# Initialize Terraform
terraform init

# Apply Terraform configuration
terraform apply -auto-approve
