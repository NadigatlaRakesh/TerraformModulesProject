resource "azurerm_storage_account" "storageaccount" {
  name                     = var.storage_acc_name
  resource_group_name      = data.azurerm_resource_group.data_rg.name
  location                 = data.azurerm_resource_group.data_rg.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = data.azurerm_resource_group.data_rg.tags
}