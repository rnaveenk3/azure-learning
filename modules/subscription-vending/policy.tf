resource "azurerm_subscription_policy_assignment" "assignment" {

  for_each = var.policy_assignments

  name                 = each.key
  policy_definition_id = each.value

  subscription_id      = "/subscriptions/${local.subscription_id}"

  depends_on = [
    azurerm_management_group_subscription_association.landingzone
  ]
}