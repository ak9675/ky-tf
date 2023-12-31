resource "azurerm_public_ip" "example" {
  name                = "dev-ip"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Static"

  tags = {
    environment = "Development"
  }
}