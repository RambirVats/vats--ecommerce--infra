variable "rg_name" {}
variable "rg_location" {}
variable "rg_name1" {}
variable "rg_location1" {}

module "resource_group" {
    source = "../../module/resource_group"
    resource_group_name = var.rg_name
    resource_group_location = var.rg_location
}

module "resource_group1" {
    source = "../../module/resource_group"
    resource_group_name = var.rg_name1
    resource_group_location = var.rg_location1
}

module "storage_account" {
    depends_on = [ module.resource_group ]
    source = "../../Module/Storage_account"
    storage_account_name = "stecommdev"
    resource_group_name = "rg-dev-ecomm-01"
    location = "East US"
}

variable "storage_account_name" {}
variable "resource_group_name" {}
variable "location" {}