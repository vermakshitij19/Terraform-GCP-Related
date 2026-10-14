module "storage" {
  source = "./modules/storage"

  project_id  = var.project_id
  region      = var.region
  bucket_name = var.bucket_name

  labels = {
    environment = "dev"
    managed_by  = "terraform"
    project     = "gcp-test"
  }
}

module "network" {
  source = "./modules/network"

  project_id = var.project_id
  region     = var.region

  vpc_name      = var.vpc_name
  subnet_name   = var.subnet_name
  subnet_cidr   = var.subnet_cidr
  firewall_name = "allow-ssh-from-iap"
  target_tag    = "iap-ssh"
}

module "compute" {
  source = "./modules/compute"

  project_id      = var.project_id
  vm_name         = var.vm_name
  vm_zone         = var.vm_zone
  vm_machine_type = var.vm_machine_type

  subnet_id       = module.network.subnet_id
  network_tags    = ["iap-ssh"]
  enable_os_login = true
}