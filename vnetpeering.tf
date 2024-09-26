resource "azurerm_virtual_network_peering" "example-1" {
  name                      = "peer1to2"
  resource_group_name       = azurerm_resource_group.example.name
  virtual_network_name      = azurerm_virtual_network.example-1.name
  remote_virtual_network_id = azurerm_virtual_network.example-2.id
  allow_forwarded_traffic    = true
  allow_gateway_transit      = false
  use_remote_gateways        = false
  allow_virtual_network_access = true
}

resource "azurerm_virtual_network_peering" "example-2" {
  name                      = "peer2to1"
  resource_group_name       = azurerm_resource_group.example.name
  virtual_network_name      = azurerm_virtual_network.example-2.name
  remote_virtual_network_id = azurerm_virtual_network.example-1.id
  allow_forwarded_traffic    = true
  allow_gateway_transit      = false
  use_remote_gateways        = false
  allow_virtual_network_access = true
}