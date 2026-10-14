
resource "google_compute_network" "dev_vpc" {
  name                    = var.vpc_name
  project                 = var.project_id
  auto_create_subnetworks = false
  routing_mode            = "REGIONAL"
}

resource "google_compute_subnetwork" "dev_subnet" {
  name                     = var.subnet_name
  project                  = var.project_id
  region                   = var.region
  network                  = google_compute_network.dev_vpc.id
  ip_cidr_range            = var.subnet_cidr
  private_ip_google_access = true
}

resource "google_compute_firewall" "allow_ssh_iap" {
  name        = var.firewall_name
  project     = var.project_id
  network     = google_compute_network.dev_vpc.name
  description = "Allow SSH through Google IAP"

  direction     = "INGRESS"
  priority      = 1000
  source_ranges = ["35.235.240.0/20"]
  target_tags   = [var.target_tag]

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
}