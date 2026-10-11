variable "network_services_edge_cache_origins" {
  description = <<EOT
Map of network_services_edge_cache_origins, attributes below
Required:
    - name
    - origin_address
Optional:
    - deletion_policy
    - description
    - failover_origin
    - labels
    - max_attempts
    - port
    - project
    - protocol
    - retry_conditions
    - aws_v4_authentication (block):
        - access_key_id (required)
        - origin_region (required)
        - secret_access_key_version (required)
    - flex_shielding (block):
        - flex_shielding_regions (optional)
    - origin_override_action (block):
        - header_action (optional, block):
            - request_headers_to_add (optional, block):
                - header_name (required)
                - header_value (required)
                - replace (optional)
        - url_rewrite (optional, block):
            - host_rewrite (optional)
    - origin_redirect (block):
        - redirect_conditions (optional)
    - timeout (block):
        - connect_timeout (optional)
        - max_attempts_timeout (optional)
        - read_timeout (optional)
        - response_timeout (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name             = string
    origin_address   = string
    deletion_policy  = optional(string)
    description      = optional(string)
    failover_origin  = optional(string)
    labels           = optional(map(string))
    max_attempts     = optional(number)
    port             = optional(number)
    project          = optional(string)
    protocol         = optional(string)
    retry_conditions = optional(list(string))
    aws_v4_authentication = optional(object({
      access_key_id             = string
      origin_region             = string
      secret_access_key_version = string
    }))
    flex_shielding = optional(object({
      flex_shielding_regions = optional(list(string))
    }))
    origin_override_action = optional(object({
      header_action = optional(object({
        request_headers_to_add = optional(list(object({
          header_name  = string
          header_value = string
          replace      = optional(bool)
        })))
      }))
      url_rewrite = optional(object({
        host_rewrite = optional(string)
      }))
    }))
    origin_redirect = optional(object({
      redirect_conditions = optional(list(string))
    }))
    timeout = optional(object({
      connect_timeout      = optional(string)
      max_attempts_timeout = optional(string)
      read_timeout         = optional(string)
      response_timeout     = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.network_services_edge_cache_origins : (
        v.origin_override_action == null || (v.origin_override_action.header_action == null || (v.origin_override_action.header_action.request_headers_to_add == null || (length(v.origin_override_action.header_action.request_headers_to_add) <= 25)))
      )
    ])
    error_message = "Each request_headers_to_add list must contain at most 25 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.network_services_edge_cache_origins : (
        v.max_attempts == null || (v.max_attempts >= 0 && v.max_attempts <= 4)
      )
    ])
    error_message = "must be between 0 and 4"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

