rg_name01 = "etp_module_dev_rg02"
tags = {
  "owner" = "rakesh"
    "env" = "Dev"
}
rg01_location = "eastus"

# VNet 
vnet_name = "etp_prod_vnet_01"
add_space = ["172.16.0.0/16"]
prv_subnet_name = "private_subnet_01"
prv_add_prefix = ["172.16.1.0/24"]
pub_subnet_name = "public_subnet_01"
pub_add_prefix = ["172.16.2.0/24"]

# PipNic
pip_rg_name = "etp_module_dev_rg02"
pip_vNet_name = "etp_prod_vnet_01"
pip_name = "etp_dev_public_ip"
nic_name = "etp_dev_nic"
nic_subnet_name = "private_subnet_01"

# Vm 
vm01_rgname = "etp_module_dev_rg02"
vm01_name = "etp_dev_vm01"
vm01_size = "Standard_B1ms"
vm01_vnet_name = "etp_prod_vnet_01"
vm01_nic_name = "etp_dev_nic"