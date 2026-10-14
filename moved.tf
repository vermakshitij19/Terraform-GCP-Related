moved {
  from = google_storage_bucket.demo
  to   = module.storage.google_storage_bucket.demo
}

moved {
  from = google_compute_network.dev_vpc
  to   = module.network.google_compute_network.dev_vpc
}

moved {
  from = google_compute_subnetwork.dev_subnet
  to   = module.network.google_compute_subnetwork.dev_subnet
}

moved {
  from = google_compute_firewall.allow_ssh_iap
  to   = module.network.google_compute_firewall.allow_ssh_iap
}

moved {
  from = google_compute_instance.dev_vm
  to   = module.compute.google_compute_instance.dev_vm
}