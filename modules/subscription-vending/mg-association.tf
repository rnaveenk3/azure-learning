resource "azurerm_management_group_subscription_association" "landingzone" {

  management_group_id = "/providers/Microsoft.Management/managementGroups/${var.management_group_id}"

  subscription_id = "/subscriptions/${local.subscription_id}"

  depends_on = [
    azapi_resource.subscription_alias
  ]
}