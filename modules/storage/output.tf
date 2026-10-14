output "bucket_name" {
  description = "Name of the managed bucket"
  value       = google_storage_bucket.demo.name
}

output "bucket_url" {
  description = "GCS URL of the bucket"
  value       = "gs://${google_storage_bucket.demo.name}"
}