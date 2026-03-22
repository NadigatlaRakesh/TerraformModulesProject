# Resource Group
variable "rg_name01" {
  
}
variable "tags" {
  type = map(string)
}
variable "rg01_location" {
  
}

# Vitual Network
variable "vnet_name" {
  
}
variable "add_space" {
  type = list(string)
}
variable "prv_subnet_name" {
  
}
variable "prv_add_prefix" {
  type = list(string)
}
variable "pub_subnet_name" {
  
}
variable "pub_add_prefix" {
  type = list(string)
}

# Pip Nic 
variable "pip_rg_name" {
  
}
variable "pip_vNet_name" {
  
}
variable "pip_name" {
  
}
variable "nic_name" {
  
}
variable "nic_subnet_name" {
  
}

# Vm 
variable "vm01_rgname" {
  
}
variable "vm01_name" {
  
}
variable "vm01_size" {
  
}
variable "vm01_vnet_name" {
  
}
variable "vm01_nic_name" {
  
}