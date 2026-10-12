output "primary_connections_id" {
  description = "Map of id values across all primary_connections, keyed the same as var.primary_connections except keys with no id are omitted"
  value       = { for k, v in snowflake_primary_connection.primary_connections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "primary_connections_comment" {
  description = "Map of comment values across all primary_connections, keyed the same as var.primary_connections except keys with no comment are omitted"
  value       = { for k, v in snowflake_primary_connection.primary_connections : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "primary_connections_enable_failover_to_accounts" {
  description = "Map of enable_failover_to_accounts values across all primary_connections, keyed the same as var.primary_connections except keys with no enable_failover_to_accounts are omitted"
  value       = { for k, v in snowflake_primary_connection.primary_connections : k => v.enable_failover_to_accounts if v.enable_failover_to_accounts != null && length(v.enable_failover_to_accounts) > 0 }
}
output "primary_connections_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all primary_connections, keyed the same as var.primary_connections except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_primary_connection.primary_connections : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "primary_connections_is_primary" {
  description = "Map of is_primary values across all primary_connections, keyed the same as var.primary_connections except keys with no is_primary are omitted"
  value       = { for k, v in snowflake_primary_connection.primary_connections : k => v.is_primary if v.is_primary != null }
}
output "primary_connections_name" {
  description = "Map of name values across all primary_connections, keyed the same as var.primary_connections except keys with no name are omitted"
  value       = { for k, v in snowflake_primary_connection.primary_connections : k => v.name if v.name != null && length(v.name) > 0 }
}
output "primary_connections_show_output" {
  description = "Map of show_output values across all primary_connections, keyed the same as var.primary_connections except keys with no show_output are omitted"
  value       = { for k, v in snowflake_primary_connection.primary_connections : k => v.show_output if v.show_output != null && length(v.show_output) > 0 }
}

