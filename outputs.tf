output "bucket_name" {
  value = module.storage.bucket_name
}

output "bucket_url" {
  value = module.storage.bucket_url
}

output "vpc_name" {
  value = module.network.vpc_name
}

output "subnet_name" {
  value = module.network.subnet_name
}

output "subnet_cidr" {
  value = module.network.subnet_cidr
}

output "vm_name" {
  value = module.compute.vm_name
}

output "vm_private_ip" {
  value = module.compute.vm_private_ip
}