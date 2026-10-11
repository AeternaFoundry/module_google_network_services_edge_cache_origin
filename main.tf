resource "google_network_services_edge_cache_origin" "network_services_edge_cache_origins" {
  for_each = var.network_services_edge_cache_origins

  name             = each.value.name
  origin_address   = each.value.origin_address
  deletion_policy  = each.value.deletion_policy
  description      = each.value.description
  failover_origin  = each.value.failover_origin
  labels           = each.value.labels
  max_attempts     = each.value.max_attempts
  port             = each.value.port
  project          = each.value.project
  protocol         = each.value.protocol
  retry_conditions = each.value.retry_conditions

  dynamic "aws_v4_authentication" {
    for_each = each.value.aws_v4_authentication != null ? [each.value.aws_v4_authentication] : []
    content {
      access_key_id             = aws_v4_authentication.value.access_key_id
      origin_region             = aws_v4_authentication.value.origin_region
      secret_access_key_version = aws_v4_authentication.value.secret_access_key_version
    }
  }

  dynamic "flex_shielding" {
    for_each = each.value.flex_shielding != null ? [each.value.flex_shielding] : []
    content {
      flex_shielding_regions = flex_shielding.value.flex_shielding_regions
    }
  }

  dynamic "origin_override_action" {
    for_each = each.value.origin_override_action != null ? [each.value.origin_override_action] : []
    content {
      dynamic "header_action" {
        for_each = origin_override_action.value.header_action != null ? [origin_override_action.value.header_action] : []
        content {
          dynamic "request_headers_to_add" {
            for_each = header_action.value.request_headers_to_add != null ? header_action.value.request_headers_to_add : []
            content {
              header_name  = request_headers_to_add.value.header_name
              header_value = request_headers_to_add.value.header_value
              replace      = request_headers_to_add.value.replace
            }
          }
        }
      }
      dynamic "url_rewrite" {
        for_each = origin_override_action.value.url_rewrite != null ? [origin_override_action.value.url_rewrite] : []
        content {
          host_rewrite = url_rewrite.value.host_rewrite
        }
      }
    }
  }

  dynamic "origin_redirect" {
    for_each = each.value.origin_redirect != null ? [each.value.origin_redirect] : []
    content {
      redirect_conditions = origin_redirect.value.redirect_conditions
    }
  }

  dynamic "timeout" {
    for_each = each.value.timeout != null ? [each.value.timeout] : []
    content {
      connect_timeout      = timeout.value.connect_timeout
      max_attempts_timeout = timeout.value.max_attempts_timeout
      read_timeout         = timeout.value.read_timeout
      response_timeout     = timeout.value.response_timeout
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

