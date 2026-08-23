resource "azapi_resource" "subscription_alias" {

  type      = "Microsoft.Subscription/aliases@2021-10-01"
  name      = var.subscription_alias
  parent_id = "/"

  body = {
    properties = {
      displayName = var.subscription_name
      workload    = var.workload
      billingScope = var.billing_scope
    }
  }
}