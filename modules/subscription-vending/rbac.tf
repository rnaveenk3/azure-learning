resource "azurerm_role_assignment" "owner" {

  for_each = toset(var.owner_object_ids)

  scope                = "/subscriptions/${local.subscription_id}"
  role_definition_name = "Owner"
  principal_id         = each.value

  depends_on = [
    azurerm_management_group_subscription_association.landingzone
  ]
}

resource "azurerm_role_assignment" "contributor" {

  for_each = toset(var.contributor_object_ids)

  scope                = "/subscriptions/${local.subscription_id}"
  role_definition_name = "Contributor"
  principal_id         = each.value

  depends_on = [
    azurerm_management_group_subscription_association.landingzone
  ]
}