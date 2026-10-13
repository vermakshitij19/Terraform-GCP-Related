resource "google_compute_firewall" "allow_ssh_iap" {
  name        = "allow-ssh-from-iap"
  project     = var.project_id
  network     = google_compute_network.dev_vpc.name
  description = "Allow SSH to tagged VMs through Google IAP"

  direction = "INGRESS"
  priority  = 1000

  source_ranges = ["35.235.240.0/20"]
  target_tags   = ["iap-ssh"]

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
}