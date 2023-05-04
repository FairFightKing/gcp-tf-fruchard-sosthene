provider "google" {
  version     = "3.38"
  project     = var.project_id
  region      = var.region
  zone        = var.zone
  credentials = file("~/.config/gcloud/application_default_credentials.json")
}
