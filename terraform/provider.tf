terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }

  backend "gcs" {
    bucket = "k8s-ci-cd-terraform-state"
    prefix = "terraform/state"
  }
}