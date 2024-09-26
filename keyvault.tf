data "azurerm_client_config" "current" {}
resource "azurerm_key_vault" "this_keyvault" {
  name                       = "${local.owner}-${var.kv_name}-${local.environment}"
  location                   = azurerm_resource_group.this_rg.location
  resource_group_name        = azurerm_resource_group.this_rg.name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = "premium"
  soft_delete_retention_days = 7
  network_acls {                            
    default_action             = "Deny"
    bypass                     = "AzureServices"
    ip_rules                   = [ "37.60.108.149", /*rasheeds-ip, sams-ip, rays-ip */] 
    virtual_network_subnet_ids = []
  }
}
#Eka access policy
resource "azurerm_key_vault_access_policy" "this_eka_access_policy" {
  key_vault_id = azurerm_key_vault.this_keyvault.id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = "f7cff743-2566-4b6c-96aa-c79114a822cf"

  secret_permissions = [
    "Set",
    "Get",
    "Delete",
    "List"
  ]
}
#rasheed access policy
resource "azurerm_key_vault_access_policy" "this_rasheed_access_policy" {
  key_vault_id = azurerm_key_vault.this_keyvault.id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = "e92abf65-a660-4504-987f-68e3d526e998"

  secret_permissions = [
    "Set",
    "Get",
    "Delete",
    "List"
  ]
}
#ray access policy
resource "azurerm_key_vault_access_policy" "this_ray_access_policy" {
  key_vault_id = azurerm_key_vault.this_keyvault.id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = "edaa2424-e4e6-449c-9002-ad9c140ca89f"

  secret_permissions = [
    "Set",
    "Get",
    "Delete",
    "List"
  ]
}
#sam access policy
resource "azurerm_key_vault_access_policy" "this_sam_access_policy" {
  key_vault_id = azurerm_key_vault.this_keyvault.id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = "228184bc-a614-4192-bcc0-5f64f972fefa"

  secret_permissions = [
    "Set",
    "Get",
    "Delete",
    "List"
  ]
}
resource "azurerm_key_vault_secret" "this_vm_secret" {
  name         = "${local.owner}-${var.vm_secret}-${local.environment}"
  value        = random_password.this_password.result
  key_vault_id = azurerm_key_vault.this_keyvault.id
}
