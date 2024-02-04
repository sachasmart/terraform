output "product" {
  value = {
    id         = stripe_product.product.id
    name       = stripe_product.product.name
    unit_label = stripe_product.product.unit_label
  }
}
