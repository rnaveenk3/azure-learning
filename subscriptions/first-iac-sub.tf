module "app1_prod" {

  source = "../modules/subscription-vending"

  subscription_name  = "alcon-app1-prod"
  subscription_alias = "alcon-app1-prod"

  billing_scope = "/providers/Microsoft.Billing/billingAccounts/xxxxx/billingProfiles/yyyyy/invoiceSections/zzzzz"

  management_group_id = "IaC-management-group"

  owner_object_ids = [
    "490970f8-e5c2-4848-83ef-6130b0e9bbdd"
  ]

  contributor_object_ids = [
    "2958f385-92a5-4d4c-a5bf-6e67f900a514"
  ]

  budget_amount = 5000
  policy_assignments = {
     enforce-tags = "/providers/Microsoft.Authorization/policyDefinitions/xxxx"
     deny-public-ip = "/providers/Microsoft.Authorization/policyDefinitions/yyyy"
   }
  tags = {
    Environment = "prod"
    CostCenter  = "CC1001"
    ManagedBy   = "Terraform"
  }
}

