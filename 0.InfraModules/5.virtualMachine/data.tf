data "azurerm_resource_group" "data_rg" {
  name = var.rg_name
}
data "azurerm_virtual_network" "data_vNet" {
  resource_group_name = data.azurerm_resource_group.data_rg.name
  name = var.vNet_name
}
data "azurerm_public_ips" "data_pip" {
  resource_group_name = data.azurerm_resource_group.data_rg.name
}
data "azurerm_network_interface" "data_nic" {
  name                = var.nic_card_name
  resource_group_name = data.azurerm_resource_group.data_rg.name
}