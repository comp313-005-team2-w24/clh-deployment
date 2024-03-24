provider "google" {
  credentials = file("norse-voice-341503-900d8fdf3b68.json")
  project = var.project_id
  region  = var.region
}

module "gke_autopilot" {
  source    = "./gke"
  project_id = var.project_id
  region     = var.region
}