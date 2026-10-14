resource "google_storage_bucket" "demo" {
  name     = var.bucket_name
  project  = var.project_id
  location = var.region

  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"
  force_destroy               = false

  labels = var.labels
}