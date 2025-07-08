variable "rg_name" {}
variable "rg_location" {}


module "resource_group" {
    source = "../../module/resource_group"
    resource_group_name = var.rg_name
    resource_group_location = var.rg_location
}

module "storage_account" {
    depends_on = [ module.resource_group ]
    source = "../../Module/Storage_account"
    storage_account_name = "stecommdev"
    resource_group_name = "rg-dev-ecomm-01"
    location = "East US"
    account_tier = "Standard"
}

variable "storage_account_name" {}
variable "resource_group_name" {}
variable "location" {}