output "vpc_name" {
  value = google_compute_network.dev_vpc.name
}

output "subnet_name" {
  value = google_compute_subnetwork.dev_subnet.name
}

output "subnet_cidr" {
  value = google_compute_subnetwork.dev_subnet.ip_cidr_range
}

output "subnet_id" {
  description = "Subnet identifier used by the compute module"
  value       = google_compute_subnetwork.dev_subnet.id
}