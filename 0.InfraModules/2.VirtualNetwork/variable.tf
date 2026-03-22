# Resource Group
variable "rg_name" {
  
}

# Virtual network
variable "vNet_name" {
  
}
variable "add_space" {
  type = list(string)
}
variable "private_subnet_name" {
  
}
variable "public_subnet_name" {
  
}
variable "public_add_prefix" {
  type = list(string)
}
variable "private_add_prefix" {
  type = list(string)
}