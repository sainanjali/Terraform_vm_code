
data "azurerm_public_ip" "public_ip" {
    for_each = var.vms
  name                = each.value.nic_public_ip
  resource_group_name = each.value.resource_group_name
}


data "azurerm_subnet" "subnet" {
    for_each = var.vms
  name                 = each.value.nic_subnet_name
  virtual_network_name = each.value.nic_vnet
  resource_group_name  = each.value.resource_group_name
}