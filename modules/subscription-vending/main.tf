locals {
  subscription_id = jsondecode(
    azapi_resource.subscription_alias.output
  ).properties.subscriptionId
}