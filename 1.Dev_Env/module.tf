locals {
  common_tags = var.tags
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