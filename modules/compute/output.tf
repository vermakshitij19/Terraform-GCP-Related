output "vm_name" {
  value = google_compute_instance.dev_vm.name
}

output "vm_private_ip" {
  value = google_compute_instance.dev_vm.network_interface[0].network_ip
}