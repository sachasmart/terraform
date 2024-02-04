resource "stripe_product" "product" {
  name        = "${upper(var.project_name)} ${var.subscription_interval}ly Subscription"
  unit_label  = var.subscription_interval
  description = "${upper(var.project_name)} ${var.subscription_interval}ly Subscription"
}

resource "stripe_price" "price" {
  product     = stripe_product.product.id
  currency    = var.currency
  unit_amount = var.unit_amount
  recurring {
    interval = var.subscription_interval
  }
}

resource "stripe_webhook_endpoint" "webhook" {
  url            = "https://${var.webhook_url}"
  description    = "Propertied Webhook Endpoint"
  disabled       = false
  connect        = false
  enabled_events = var.stripe_events
}
