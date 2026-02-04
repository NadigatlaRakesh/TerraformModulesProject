locals {
  common_tags = var.tags
  delete_os_disk_on_termination = true
  delete_data_disks_on_termination =true
}

module "eastusrg01" {
  source = "../0.InfraModules/1.Resource_Group"
  rg_name = var.rg_name01
  rg_location = var.rg01_location
  rg_tags = local.common_tags
}

# module "eastusrg02" {
#   source = "../0.InfraModules/1.Resource_Group"
#   rg_name = "etp_prod_rg02"
#   rg_location = "eastus"
#   rg_tags = local.common_tags
# }

module "vnet01_rg01" {
  source = "../0.InfraModules/2.VirtualNetwork"
  rg_name = var.rg_name01
  vNet_name = var.vnet_name
  add_space = var.add_space
  private_subnet_name = var.prv_subnet_name
  private_add_prefix = var.prv_add_prefix
  public_subnet_name = var.pub_subnet_name
  public_add_prefix = var.pub_add_prefix

  depends_on = [ module.eastusrg01 ]
}

module "dev_pip_nic" {
  source = "../0.InfraModules/6.pipNic"
  rg_name  = var.pip_rg_name
  vNet_name = var.pip_vNet_name
  pip_name = var.pip_name
  nic_name = var.nic_name
  subnet_name = var.nic_subnet_name

  depends_on = [ module.eastusrg01 , module.vnet01_rg01]
}

module "dev_vm01" {
  source = "../0.InfraModules/5.virtualMachine"
  rg_name = var.vm01_rgname
  vm_name = var.vm01_name
  vm_size = var.vm01_size
  delete_os_disk_on_termination = local.delete_os_disk_on_termination
  delete_data_disks_on_termination = local.delete_data_disks_on_termination
  vNet_name = var.vm01_vnet_name
  nic_card_name = var.vm01_nic_name

  depends_on = [ module.eastusrg01 , module.vnet01_rg01, module.dev_pip_nic]
}