output "bucket_name" {
  description = "Created bucket name"
  value       = google_storage_bucket.demo.name
}

output "bucket_url" {
  description = "GCS bucket URL"
  value       = "gs://${google_storage_bucket.demo.name}"
}

output "vpc_name" {
  description = "Created VPC name"
  value       = google_compute_network.dev_vpc.name
}

output "subnet_name" {
  description = "Created subnet name"
  value       = google_compute_subnetwork.dev_subnet.name
}

output "subnet_cidr" {
  description = "Created subnet CIDR range"
  value       = google_compute_subnetwork.dev_subnet.ip_cidr_range
}

output "vm_name" {
  description = "Created VM name"
  value       = google_compute_instance.dev_vm.name
}

output "vm_private_ip" {
  description = "Private IP address of the VM"
  value       = google_compute_instance.dev_vm.network_interface[0].network_ip
}