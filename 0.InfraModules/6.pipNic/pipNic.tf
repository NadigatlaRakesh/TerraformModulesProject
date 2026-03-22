resource "azurerm_public_ip" "public_ip" {
  name                = var.pip_name
  resource_group_name = data.azurerm_resource_group.data_rg.name
  location            = data.azurerm_resource_group.data_rg.location
  allocation_method   = "Static"

  tags = data.azurerm_resource_group.data_rg.tags
}

resource "azurerm_network_interface" "nic_card" {
  name                = var.nic_name
  location            = data.azurerm_resource_group.data_rg.location
  resource_group_name = data.azurerm_resource_group.data_rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.data_sub_net.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.public_ip.id
  }
}