module "Rgs" {
  source = "../../modules/azurerm_resource_group"
  Rgs    = var.Rgs
}
module "Sgs" {
  depends_on = [module.Rgs]
  source     = "../../modules/azurerm_storage_account"
  Sgs        = var.Sgs
}
module "vnets" {
  depends_on = [module.Rgs]
  source     = "../../modules/azurerm_virtual_network"
  vnets      = var.vnets
}
module "snets" {
  depends_on = [module.vnets]
  source     = "../../modules/azurerm_subnet"
  snets      = var.snets
}

module "pips" {
  depends_on = [module.Rgs]
  source     = "../../modules/azurerm_public_ip"
  pips       = var.pips
}

module "vms" {
   depends_on = [
    module.snets,
    module.pips
  ]
    source = "../../modules/azurerm_network_interface_card"
    vms = var.vms

}