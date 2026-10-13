variable "project_id" {
  description = "GCP project for the Terraform lab"
  type        = string
  default     = "devops-504813"
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "asia-south1"
}

variable "bucket_name" {
  description = "Globally unique GCS bucket name"
  type        = string
}

variable "vpc_name" {
  description = "Name of the development VPC"
  type        = string
  default     = "dev-vpc"
}

variable "subnet_name" {
  description = "Name of the development subnet"
  type        = string
  default     = "dev-subnet"
}

variable "subnet_cidr" {
  description = "IP range for the development subnet"
  type        = string
  default     = "10.10.0.0/24"
}

variable "vm_name" {
  description = "Development VM name"
  type        = string
  default     = "dev-vm"
}

variable "vm_zone" {
  description = "Zone for the development VM"
  type        = string
  default     = "asia-south1-a"
}

variable "vm_machine_type" {
  description = "Machine type for the development VM"
  type        = string
  default     = "e2-micro"
}