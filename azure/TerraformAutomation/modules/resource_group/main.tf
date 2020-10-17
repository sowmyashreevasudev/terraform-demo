resource "azurerm_resource_group" "resgrp" {
  name     = "${var.resgrp}"
  location = "${var.location}"  
}

