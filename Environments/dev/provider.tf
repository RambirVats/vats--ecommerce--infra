terraform {
    required_providers {
        azurerm = {
        source  = "hashicorp/azurerm"
        version = "4.23.0"
        }
    }
    

}
provider "azurerm" {
    features {}
    subscription_id = "681b2185-010e-4f9c-8b3b-0191bb9a1597"

  
}