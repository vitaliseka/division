resource "azurerm_bastion_host" "this_bastion" {
  name                = "var.bastion-name"
  location            = azurerm_resource_group.this_rg.location
  resource_group_name = azurerm_resource_group.this_rg.name

  ip_configuration {
    name                 = "ip_config-name"
    subnet_id            = azurerm_subnet.this_subnet.id
    public_ip_address_id = azurerm_public_ip.this_publicip.id
  }
}