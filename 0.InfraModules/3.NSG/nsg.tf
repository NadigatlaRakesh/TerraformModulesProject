resource "azurerm_network_security_group" "nsg" {
  name                = var.nsg_name
  location            = data.azurerm_resource_group.data_rg.location
  resource_group_name = data.azurerm_resource_group.data_rg.name

  security_rule {
    name                       = var.rule_name
    priority                   = var.rule_number
    direction                  = "Inbound"
    access                     = var.rule_access
    protocol                   = var.rule_protocol
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = data.azurerm_resource_group.data_rg.tags
}