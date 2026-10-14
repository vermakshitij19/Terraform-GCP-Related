variable "project_id" {
  type = string
}

variable "vm_name" {
  type = string
}

variable "vm_zone" {
  type = string
}

variable "vm_machine_type" {
  type = string
}

variable "subnet_id" {
  description = "Subnet where the VM will run"
  type        = string
}

variable "network_tags" {
  type    = list(string)
  default = ["iap-ssh"]
}

variable "enable_os_login" {
  type    = bool
  default = true
}