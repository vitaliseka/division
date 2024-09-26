variable "kv_name" {
    description = "keyvault-name"
    type = string
    default = "keyvault"
}
variable "owner" {
    description = "owner-name"
    type = string
    default = "division"
}
variable "environment" {
    description = "environment-name"
    type = string
    default = "secure"
}
variable "rg" {
    description = "resorcegroup-name"
    type = string
    default = "rg"
}
variable "windows-vm-name" { #remove the dash and use underscore instead
    description = "windows-vm-name"
    type = string
    default = "windowsvm"
}
variable "vm_secret" {
    description = "vm-secret"
    type = string
    default = "your_secret_value"
}
variable "windows_vm_username"{
    description = "windows-vm-username"
    type = string
    default = "winvm_username"
}
variable "windows_nsg_name"{
    description = "windows nsg name"
    type = string
    default = "winvm_username"
}