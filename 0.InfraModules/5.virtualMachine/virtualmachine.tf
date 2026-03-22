resource "azurerm_virtual_machine" "virtual_machine" {
  name                  = var.vm_name
  location              = data.azurerm_resource_group.data_rg.location
  resource_group_name   = data.azurerm_resource_group.data_rg.name
  network_interface_ids = [data.azurerm_network_interface.data_nic.id]
  vm_size               = var.vm_size

  # Uncomment this line to delete the OS disk automatically when deleting the VM
   delete_os_disk_on_termination = var.delete_os_disk_on_termination

  # Uncomment this line to delete the data disks automatically when deleting the VM
   delete_data_disks_on_termination = var.delete_data_disks_on_termination

  storage_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = "etp"
    admin_password = "Password1234"
  }
  os_profile_windows_config {
  provision_vm_agent = true
  }
  tags = data.azurerm_resource_group.data_rg.tags
}