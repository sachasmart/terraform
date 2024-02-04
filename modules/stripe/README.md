# Stripe Terraform Module

This module is used to deploy resources in Stripe.

## Usage

```hcl
module "stripe" {
  source = "github.com/sachasmart/terraform"

  # insert the required variables here
  product_name =
  unit_amount = 
  subscription_interval =
  currency =
  stripe_events
  stripe_webhook_secret
}
```