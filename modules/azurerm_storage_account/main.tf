variable "Sgs" {}
resource "azurerm_storage_account" "Storage_Account" {
    for_each = var.Sgs
    name = each.value.name
    resource_group_name = each.value.resource_group_name
    location = each.value.location
    account_tier = "Standard"
    account_replication_type = "LRS"
}