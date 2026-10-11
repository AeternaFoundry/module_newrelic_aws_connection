resource "newrelic_aws_connection" "aws_connections" {
  for_each = var.aws_connections

  name        = each.value.name
  account_id  = each.value.account_id
  description = each.value.description
  enabled     = each.value.enabled
  external_id = each.value.external_id
  region      = each.value.region
  scope_id    = each.value.scope_id
  scope_type  = each.value.scope_type

  credential {
    assume_role {
      external_id = each.value.credential.assume_role.external_id
      role_arn    = each.value.credential.assume_role.role_arn
    }
  }

  dynamic "settings" {
    for_each = each.value.settings != null ? each.value.settings : []
    content {
      key   = settings.value.key
      value = settings.value.value
    }
  }

  dynamic "tag" {
    for_each = each.value.tag != null ? each.value.tag : []
    content {
      key    = tag.value.key
      values = tag.value.values
    }
  }
}

