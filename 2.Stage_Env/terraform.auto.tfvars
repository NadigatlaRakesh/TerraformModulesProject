rg_name01 = "etp_module_stage_rg02"
tags = {
  "owner" = "rakesh"
    "env" = "Dev"
}
rg01_location = "eastus"

# VNet 
vnet_name = "etp_stage_vnet_01"
add_space = ["192.168.1.0/24"]
prv_subnet_name = "private_subnet_01"
prv_add_prefix = ["192.168.1.1/26"]
pub_subnet_name = "public_subnet_01"
pub_add_prefix = ["192.168.1.2/26"]

# # PipNic
# pip_rg_name = "etp_module_dev_rg02"
# pip_vNet_name = "etp_prod_vnet_01"
# pip_name = "etp_dev_public_ip"
# nic_name = "etp_dev_nic"
# nic_subnet_name = "private_subnet_01"

# # Vm 
# vm01_rgname = "etp_module_dev_rg02"
# vm01_name = "etp_dev_vm01"
# vm01_size = "Standard_B1ms"
# vm01_vnet_name = "etp_prod_vnet_01"
# vm01_nic_name = "etp_dev_nic"