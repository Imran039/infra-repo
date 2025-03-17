provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_container_cluster" "primary" {
  name     = "k8s-cluster"
  location = var.region

  remove_default_node_pool = true
  initial_node_count       = 1

  lifecycle {
    ignore_changes = [node_pool]
  }
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "primary-node-pool"
  location   = var.region
  cluster    = google_container_cluster.primary.name
  node_count = 1

  node_config {
    machine_type    = "e2-micro"
    disk_size_gb    = 10
    image_type      = "COS_CONTAINERD"
    oauth_scopes    = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
