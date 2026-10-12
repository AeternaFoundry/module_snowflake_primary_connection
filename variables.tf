variable "primary_connections" {
  description = <<EOT
Map of primary_connections, attributes below
Required:
    - name
Optional:
    - comment
    - enable_failover_to_accounts
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    name                        = string
    comment                     = optional(string)
    enable_failover_to_accounts = optional(list(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

