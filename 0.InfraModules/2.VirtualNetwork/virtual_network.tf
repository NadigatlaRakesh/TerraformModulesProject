resource "azurerm_virtual_network" "VNet" {
  name                = var.vNet_name
  location            = data.azurerm_resource_group.data_rg.location
  resource_group_name = data.azurerm_resource_group.data_rg.name
  address_space       = var.add_space

  tags = data.azurerm_resource_group.data_rg.tags
}

resource "azurerm_subnet" "public_subnet" {
  name                 = var.private_subnet_name
  resource_group_name  = data.azurerm_resource_group.data_rg.name
  virtual_network_name = azurerm_virtual_network.VNet.name
  address_prefixes     = var.public_add_prefix
}
resource "azurerm_subnet" "private_subnet" {
  name                 = var.public_subnet_name
  resource_group_name  = data.azurerm_resource_group.data_rg.name
  virtual_network_name = azurerm_virtual_network.VNet.name
  address_prefixes     = var.private_add_prefix
}