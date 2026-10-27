output "aws_connections_id" {
  description = "Map of id values across all aws_connections, keyed the same as var.aws_connections"
  value       = { for k, v in newrelic_aws_connection.aws_connections : k => v.id }
}
output "aws_connections_account_id" {
  description = "Map of account_id values across all aws_connections, keyed the same as var.aws_connections"
  value       = { for k, v in newrelic_aws_connection.aws_connections : k => v.account_id }
}
output "aws_connections_credential" {
  description = "Map of credential values across all aws_connections, keyed the same as var.aws_connections"
  value       = { for k, v in newrelic_aws_connection.aws_connections : k => one(v.credential) }
}
output "aws_connections_description" {
  description = "Map of description values across all aws_connections, keyed the same as var.aws_connections"
  value       = { for k, v in newrelic_aws_connection.aws_connections : k => v.description }
}
output "aws_connections_enabled" {
  description = "Map of enabled values across all aws_connections, keyed the same as var.aws_connections"
  value       = { for k, v in newrelic_aws_connection.aws_connections : k => v.enabled }
}
output "aws_connections_external_id" {
  description = "Map of external_id values across all aws_connections, keyed the same as var.aws_connections"
  value       = { for k, v in newrelic_aws_connection.aws_connections : k => v.external_id }
}
output "aws_connections_name" {
  description = "Map of name values across all aws_connections, keyed the same as var.aws_connections"
  value       = { for k, v in newrelic_aws_connection.aws_connections : k => v.name }
}
output "aws_connections_region" {
  description = "Map of region values across all aws_connections, keyed the same as var.aws_connections"
  value       = { for k, v in newrelic_aws_connection.aws_connections : k => v.region }
}
output "aws_connections_scope_id" {
  description = "Map of scope_id values across all aws_connections, keyed the same as var.aws_connections"
  value       = { for k, v in newrelic_aws_connection.aws_connections : k => v.scope_id }
}
output "aws_connections_scope_type" {
  description = "Map of scope_type values across all aws_connections, keyed the same as var.aws_connections"
  value       = { for k, v in newrelic_aws_connection.aws_connections : k => v.scope_type }
}
output "aws_connections_settings" {
  description = "Map of settings values across all aws_connections, keyed the same as var.aws_connections"
  value       = { for k, v in newrelic_aws_connection.aws_connections : k => v.settings }
}
output "aws_connections_tag" {
  description = "Map of tag values across all aws_connections, keyed the same as var.aws_connections"
  value       = { for k, v in newrelic_aws_connection.aws_connections : k => v.tag }
}

