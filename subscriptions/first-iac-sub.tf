module "app1_prod" {

  source = "../modules/subscription-vending"

  subscription_name  = "alcon-app1-dev"
  subscription_alias = "alcon-app1-dev"

  billing_scope = "/providers/Microsoft.Billing/billingAccounts/8b167c09-df3a-5973-5c19-1a94131b966a:dfe0f4b8-4995-4045-9db2-33d1f0d8ac5d_2019-05-31/billingProfiles/ES2C-BE4M-BG7-PGB/invoiceSections/6549736f-1807-46c9-9fd1-09abaaeb12e4"
  
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

