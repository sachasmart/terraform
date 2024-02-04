variable "project_name" {
  type        = string
  description = "value of the project name"
}

variable "unit_amount" {
  type        = number
  description = "value of the unit amount"
}

variable "subscription_interval" {
  type = string
  validation {
    condition     = contains(["month", "year"], var.subscription_interval)
    error_message = "Allowed values for subscription_interval are \"month\", or \"year\"."
  }
  description = "value of the subscription interval"
}

variable "currency" {
  type = string
  validation {
    condition     = contains(["cad", "usd"], var.currency)
    error_message = "Allowed values for currency are \"cad\", or \"usd\"."
  }

  description = "value of the currency"
}

variable "stripe_events" {
  type    = list(string)
  default = ["charge.failed", "payment_intent.requires_action", "payment_intent.partially_funded", "checkout.session.completed", "setup_intent.succeeded"]

  validation {
    condition     = length(var.stripe_events) > 0
    error_message = "stripe_events must contain at least one event."
  }

  description = "value of the stripe events"
}

variable "webhook_url" {
  type        = string
  description = "value of the webhook url"
}

