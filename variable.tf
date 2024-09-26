variable "kv_name" {
    description = "keyvault name"
    type = string
    default = "keyvault"
}
variable "owner" {
    description = "owner name"
    type = string
    default = "division"
}
variable "environment" {
    description = "environment name"
    type = string
    default = "secure"
}
variable "rg" {
    description = "resorcegroup-name"
    type = string
    default = "rg"
}
variable "windows-vm-name" { #remove the dash and use underscore instead
    description = "windows virtual machine name"
    type = string
    default = "windows-vm"
}
variable "vm_secret" {
    description = "virtual machine secret"
    type = string
    default = "vm-secret"
}
variable "flexible_server_secret" {
    description = " felxible server secret"
    type = string
    default = "felxible-server-secret"
}
variable "windows_vm_username"{
    description = "windows virtual machine username"
    type = string
    default = "winvm-username"
}
variable "windows_nsg_name"{
    description = "windows nsg name"
    type = string
    default = "winvm-nsg-name"
}
variable "vnet_initial"{
    description = "virtual network initial-vnet1"
    type = string
    default = "vnetpeering-initial"
}
variable "vnet_final"{
    description = "virtual network final-vnet2"
    type = string
    default = "vnetpeering-initial"
}
variable "vnetpeering_initial"{
    description = "virtual network peering initial-vnet1"
    type = string
    default = "vnetpeering-initial"
}
variable "vnetpeering_final"{
    description = "virtual network peering final- vnet2"
    type = string
    default = "vnetpeering-final"
}