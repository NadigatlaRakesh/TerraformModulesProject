data "azurerm_resource_group" "data_rg" {
  name = var.rg_name
}
data "azurerm_virtual_network" "data_vNet" {
  resource_group_name = data.azurerm_resource_group.data_rg.name
  name = var.vNet_name
}
data "azurerm_subnet" "data_sub_net" {
  name                 = var.subnet_name
  virtual_network_name = data.azurerm_virtual_network.data_vNet.name
  resource_group_name  = data.azurerm_resource_group.data_rg.name
}