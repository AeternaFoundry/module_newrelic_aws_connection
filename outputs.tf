output "aws_connections_id" {
  description = "Map of id values across all aws_connections, keyed the same as var.aws_connections except keys with no id are omitted"
  value       = { for k, v in newrelic_aws_connection.aws_connections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "aws_connections_account_id" {
  description = "Map of account_id values across all aws_connections, keyed the same as var.aws_connections except keys with no account_id are omitted"
  value       = { for k, v in newrelic_aws_connection.aws_connections : k => v.account_id if v.account_id != null }
}
output "aws_connections_credential" {
  description = "Map of credential values across all aws_connections, keyed the same as var.aws_connections except keys with no credential are omitted"
  value       = { for k, v in newrelic_aws_connection.aws_connections : k => one(v.credential) if v.credential != null && length(v.credential) > 0 }
}
output "aws_connections_description" {
  description = "Map of description values across all aws_connections, keyed the same as var.aws_connections except keys with no description are omitted"
  value       = { for k, v in newrelic_aws_connection.aws_connections : k => v.description if v.description != null && length(v.description) > 0 }
}
output "aws_connections_enabled" {
  description = "Map of enabled values across all aws_connections, keyed the same as var.aws_connections except keys with no enabled are omitted"
  value       = { for k, v in newrelic_aws_connection.aws_connections : k => v.enabled if v.enabled != null }
}
output "aws_connections_external_id" {
  description = "Map of external_id values across all aws_connections, keyed the same as var.aws_connections except keys with no external_id are omitted"
  value       = { for k, v in newrelic_aws_connection.aws_connections : k => v.external_id if v.external_id != null && length(v.external_id) > 0 }
}
output "aws_connections_name" {
  description = "Map of name values across all aws_connections, keyed the same as var.aws_connections except keys with no name are omitted"
  value       = { for k, v in newrelic_aws_connection.aws_connections : k => v.name if v.name != null && length(v.name) > 0 }
}
output "aws_connections_region" {
  description = "Map of region values across all aws_connections, keyed the same as var.aws_connections except keys with no region are omitted"
  value       = { for k, v in newrelic_aws_connection.aws_connections : k => v.region if v.region != null && length(v.region) > 0 }
}
output "aws_connections_scope_id" {
  description = "Map of scope_id values across all aws_connections, keyed the same as var.aws_connections except keys with no scope_id are omitted"
  value       = { for k, v in newrelic_aws_connection.aws_connections : k => v.scope_id if v.scope_id != null && length(v.scope_id) > 0 }
}
output "aws_connections_scope_type" {
  description = "Map of scope_type values across all aws_connections, keyed the same as var.aws_connections except keys with no scope_type are omitted"
  value       = { for k, v in newrelic_aws_connection.aws_connections : k => v.scope_type if v.scope_type != null && length(v.scope_type) > 0 }
}
output "aws_connections_settings" {
  description = "Map of settings values across all aws_connections, keyed the same as var.aws_connections except keys with no settings are omitted"
  value       = { for k, v in newrelic_aws_connection.aws_connections : k => v.settings if v.settings != null && length(v.settings) > 0 }
}
output "aws_connections_tag" {
  description = "Map of tag values across all aws_connections, keyed the same as var.aws_connections except keys with no tag are omitted"
  value       = { for k, v in newrelic_aws_connection.aws_connections : k => v.tag if v.tag != null && length(v.tag) > 0 }
}

