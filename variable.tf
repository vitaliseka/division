variable "kv_name" {
    description = "keyvault-name"
    type = "string"
    default = "keyvault"
}
variable "owner" {
    description = "owner-name"
    type = "string"
    default = "division"
}
variable "environment" {
    description = "environment-name"
    type = "string"
    default = "secure"
}