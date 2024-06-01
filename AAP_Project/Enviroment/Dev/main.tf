variable "rgs" {}

module "rgmodule" {
  source = "../../Modules/azurerm_rg"
  rgs = var.rgs
}