resource "google_compute_instance" "dev_vm" {
  name         = var.vm_name
  project      = var.project_id
  zone         = var.vm_zone
  machine_type = var.vm_machine_type

  tags = var.network_tags

  metadata = {
    enable-oslogin = var.enable_os_login ? "TRUE" : "FALSE"
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
      size  = 10
    }
  }

  network_interface {
    subnetwork = var.subnet_id
  }

  labels = {
    environment = "dev"
    managed_by  = "terraform"
  }
}