

resource "azurerm_app_service_plan" "appserviceplan" {
  name                = var.appservice_plan 
  location            = var.location
  resource_group_name = var.resgrp

  sku {
    tier = var.tier
    size = var.size
  }
}

resource "azurerm_app_service" "appservice" {
  name                = var.appservicename
  location            = var.location
  resource_group_name = var.resgrp
  app_service_plan_id = azurerm_app_service_plan.appserviceplan.id

  site_config {
    windows_fx_version = "DOTNETCORE|3.1"

  }

}