resource "azurerm_consumption_budget_subscription" "budget" {

  name            = "monthly-budget"
  subscription_id = "/subscriptions/${local.subscription_id}"

  amount     = var.budget_amount
  time_grain = "Monthly"

  time_period {
    start_date = "2026-01-01T00:00:00Z"
  }

  notification {

    enabled   = true
    threshold = 80

    operator  = "GreaterThan"

    contact_emails = [
      "cloudops@company.com"
    ]
  }
}
