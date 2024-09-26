#temporary vnet resource 
resource "azurerm_virtual_network" "this_vnetinitial" {
  name                = "${local.owner}-${var.vnet_initial}-${local.environment}"
  resource_group_name = azurerm_resource_group.this_rg.name
  address_space       = ["10.0.1.0/24"]
  location            = azurerm_resource_group.this_rg.location
}

resource "azurerm_virtual_network" "this_vnetfinal" {
  name                = "${local.owner}-${var.vnet_final}-${local.environment}"
  resource_group_name = azurerm_resource_group.this_rg.name
  address_space       = ["10.0.2.0/24"]
  location            = azurerm_resource_group.this_rg.location
}




#vnet peering main 
resource "azurerm_virtual_network_peering" "this_vnetpeering_initial" {
  name                      = "${local.owner}-${var.vnetpeering_initial}-${local.environment}"
  resource_group_name       = azurerm_resource_group.this_rg.name
  virtual_network_name      = azurerm_virtual_network.this_vnetinitial.name
  remote_virtual_network_id = azurerm_virtual_network.this_vnetfinal.id
  allow_forwarded_traffic    = true
  allow_virtual_network_access = true
}

resource "azurerm_virtual_network_peering" "this_vnetpeering_final" {
  name                      = "${local.owner}-${var.vnetpeering_final}-${local.environment}"
  resource_group_name       = azurerm_resource_group.this_rg.name
  virtual_network_name      = azurerm_virtual_network.this_vnetfinal.name
  remote_virtual_network_id = azurerm_virtual_network.this_vnetinitial.id
  allow_forwarded_traffic    = true
  allow_virtual_network_access = true
}