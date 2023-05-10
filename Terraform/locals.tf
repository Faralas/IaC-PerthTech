locals {
  name-prefix = "dev-${var.env-prefix}"

  rg-name = "${local.name-prefix}-${var.resource_group_name}"
}