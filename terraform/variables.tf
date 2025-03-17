variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
  default     = "k8s-ci-cd-project"
}

variable "region" {
  description = "GCP region"
  default     = "us-central1"
  type        = string
}
