variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "Bucket location"
  type        = string
}

variable "bucket_name" {
  description = "Globally unique GCS bucket name"
  type        = string
}

variable "labels" {
  description = "Labels applied to the bucket"
  type        = map(string)
}