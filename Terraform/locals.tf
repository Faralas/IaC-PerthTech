locals {
  name-prefix = "${var.env-prefix}-${var.env-number-prefix}"

  rg-name = "${local.name-prefix}-${var.resource_group_name}"
}