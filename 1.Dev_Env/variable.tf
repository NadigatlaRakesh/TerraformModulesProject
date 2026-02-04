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