provider "azurerm" {
    features {}
}

#create a resource group
resource "azurerm_resource_group" "demo" {
    name = "first-steps-demo"
    location = var.location
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "test" {
  name                = var.network-name
  resource_group_name = "${azurerm_resource_group.demo.name}"
  location            = "${azurerm_resource_group.demo.location}"
  address_space       = ["10.0.0.0/16"]
}