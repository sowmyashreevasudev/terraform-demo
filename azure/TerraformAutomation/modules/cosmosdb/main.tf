resource "azurerm_cosmosdb_account" "cdb" {
  name                = var.cosdbname
  location            = var.location
  resource_group_name = var.resgrp
  offer_type          = var.offer_type
  kind                = var.kind

  enable_automatic_failover = false

  capabilities {
    name = "EnableAggregationPipeline"
  }

  capabilities {
    name = "mongoEnableDocLevelTTL"
  }

  capabilities {
    name = "MongoDBv3.4"
  }

  consistency_policy {
    consistency_level       = "Session"
    
  }
  geo_location {
    location = "${var.failover_location}"
    failover_priority = 1
  }
  geo_location {
    location = "${var.location}"
    failover_priority = 0
  }

}