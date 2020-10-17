/* Declare variables*/
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}
variable "subscription_id" {
  description = "Subscription ID"
  default     = "e3d2d88d-b54a-4fb7-b918-3cb24aad9ba9"
}
variable "client_id" {
  description = "Web App Id"
  default     = "c3ea2ced-6e7e-4dbb-9fba-de5b20c07017"
}
variable "client_secret" {
  description = "Key for Service principal"
  default     = "608990dc-99ce-4c9f-b3d0-168d47610937"
}
variable "tenant_id" {
  description = "Tenant ID from AD"
  default     = "687f51c3-0c5d-4905-84f8-97c683a5b9d1"
}

