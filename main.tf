resource "azurerm_resource_group" "RG01"{
  name     = "myrecoveryvault"
  location = "West Europe"
}

resource "azurerm_recovery_services_vault" "RSvault" {
  name                = "RSV01"
  location            = azurerm_resource_group.RG01.location
  resource_group_name = azurerm_resource_group.RG01.name
  sku                 = "Standard"

  soft_delete_enabled = true
}