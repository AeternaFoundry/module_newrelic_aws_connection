variable "aws_connections" {
  description = <<EOT
Map of aws_connections, attributes below
Required:
    - name
    - credential (block):
        - assume_role (required, block):
            - external_id (optional)
            - role_arn (required)
Optional:
    - account_id
    - description
    - enabled
    - external_id
    - region
    - scope_id
    - scope_type
    - settings (block):
        - key (required)
        - value (required)
    - tag (block):
        - key (required)
        - values (required)
EOT

  type = map(object({
    name        = string
    account_id  = optional(number)
    description = optional(string)
    enabled     = optional(bool)
    external_id = optional(string)
    region      = optional(string)
    scope_id    = optional(string)
    scope_type  = optional(string)
    credential = object({
      assume_role = object({
        external_id = optional(string)
        role_arn    = string
      })
    })
    settings = optional(list(object({
      key   = string
      value = string
    })))
    tag = optional(list(object({
      key    = string
      values = set(string)
    })))
  }))
}

