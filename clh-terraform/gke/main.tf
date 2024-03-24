resource "google_container_cluster" "autopilot_cluster" {
  name               = "autopilot-cluster-${var.project_id}"
  location           = var.region
  project            = var.project_id
  enable_autopilot   = true
}