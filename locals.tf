locals {
   
  parameters = {
    Name = var.name
  }

  pproduct_name = "cdxms-devl1"
  pproduct_id = "pa-fnfswj2wwfnpm"
  product_id = "prod-ferc46aqeswom"

  mandatory_tags = {
    ProvisionedBy        = "terraform"
  }
}