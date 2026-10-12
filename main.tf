resource "snowflake_primary_connection" "primary_connections" {
  for_each = var.primary_connections

  name                        = each.value.name
  comment                     = each.value.comment
  enable_failover_to_accounts = each.value.enable_failover_to_accounts

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

