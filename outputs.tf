output "network_services_edge_cache_origins_id" {
  description = "Map of id values across all network_services_edge_cache_origins, keyed the same as var.network_services_edge_cache_origins except keys with no id are omitted"
  value       = { for k, v in google_network_services_edge_cache_origin.network_services_edge_cache_origins : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_services_edge_cache_origins_aws_v4_authentication" {
  description = "Map of aws_v4_authentication values across all network_services_edge_cache_origins, keyed the same as var.network_services_edge_cache_origins except keys with no aws_v4_authentication are omitted"
  value       = { for k, v in google_network_services_edge_cache_origin.network_services_edge_cache_origins : k => one(v.aws_v4_authentication) if v.aws_v4_authentication != null && length(v.aws_v4_authentication) > 0 }
}
output "network_services_edge_cache_origins_deletion_policy" {
  description = "Map of deletion_policy values across all network_services_edge_cache_origins, keyed the same as var.network_services_edge_cache_origins except keys with no deletion_policy are omitted"
  value       = { for k, v in google_network_services_edge_cache_origin.network_services_edge_cache_origins : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "network_services_edge_cache_origins_description" {
  description = "Map of description values across all network_services_edge_cache_origins, keyed the same as var.network_services_edge_cache_origins except keys with no description are omitted"
  value       = { for k, v in google_network_services_edge_cache_origin.network_services_edge_cache_origins : k => v.description if v.description != null && length(v.description) > 0 }
}
output "network_services_edge_cache_origins_effective_labels" {
  description = "Map of effective_labels values across all network_services_edge_cache_origins, keyed the same as var.network_services_edge_cache_origins except keys with no effective_labels are omitted"
  value       = { for k, v in google_network_services_edge_cache_origin.network_services_edge_cache_origins : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "network_services_edge_cache_origins_failover_origin" {
  description = "Map of failover_origin values across all network_services_edge_cache_origins, keyed the same as var.network_services_edge_cache_origins except keys with no failover_origin are omitted"
  value       = { for k, v in google_network_services_edge_cache_origin.network_services_edge_cache_origins : k => v.failover_origin if v.failover_origin != null && length(v.failover_origin) > 0 }
}
output "network_services_edge_cache_origins_flex_shielding" {
  description = "Map of flex_shielding values across all network_services_edge_cache_origins, keyed the same as var.network_services_edge_cache_origins except keys with no flex_shielding are omitted"
  value       = { for k, v in google_network_services_edge_cache_origin.network_services_edge_cache_origins : k => one(v.flex_shielding) if v.flex_shielding != null && length(v.flex_shielding) > 0 }
}
output "network_services_edge_cache_origins_labels" {
  description = "Map of labels values across all network_services_edge_cache_origins, keyed the same as var.network_services_edge_cache_origins except keys with no labels are omitted"
  value       = { for k, v in google_network_services_edge_cache_origin.network_services_edge_cache_origins : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "network_services_edge_cache_origins_max_attempts" {
  description = "Map of max_attempts values across all network_services_edge_cache_origins, keyed the same as var.network_services_edge_cache_origins except keys with no max_attempts are omitted"
  value       = { for k, v in google_network_services_edge_cache_origin.network_services_edge_cache_origins : k => v.max_attempts if v.max_attempts != null }
}
output "network_services_edge_cache_origins_name" {
  description = "Map of name values across all network_services_edge_cache_origins, keyed the same as var.network_services_edge_cache_origins except keys with no name are omitted"
  value       = { for k, v in google_network_services_edge_cache_origin.network_services_edge_cache_origins : k => v.name if v.name != null && length(v.name) > 0 }
}
output "network_services_edge_cache_origins_origin_address" {
  description = "Map of origin_address values across all network_services_edge_cache_origins, keyed the same as var.network_services_edge_cache_origins except keys with no origin_address are omitted"
  value       = { for k, v in google_network_services_edge_cache_origin.network_services_edge_cache_origins : k => v.origin_address if v.origin_address != null && length(v.origin_address) > 0 }
}
output "network_services_edge_cache_origins_origin_override_action" {
  description = "Map of origin_override_action values across all network_services_edge_cache_origins, keyed the same as var.network_services_edge_cache_origins except keys with no origin_override_action are omitted"
  value       = { for k, v in google_network_services_edge_cache_origin.network_services_edge_cache_origins : k => one(v.origin_override_action) if v.origin_override_action != null && length(v.origin_override_action) > 0 }
}
output "network_services_edge_cache_origins_origin_redirect" {
  description = "Map of origin_redirect values across all network_services_edge_cache_origins, keyed the same as var.network_services_edge_cache_origins except keys with no origin_redirect are omitted"
  value       = { for k, v in google_network_services_edge_cache_origin.network_services_edge_cache_origins : k => one(v.origin_redirect) if v.origin_redirect != null && length(v.origin_redirect) > 0 }
}
output "network_services_edge_cache_origins_port" {
  description = "Map of port values across all network_services_edge_cache_origins, keyed the same as var.network_services_edge_cache_origins except keys with no port are omitted"
  value       = { for k, v in google_network_services_edge_cache_origin.network_services_edge_cache_origins : k => v.port if v.port != null }
}
output "network_services_edge_cache_origins_project" {
  description = "Map of project values across all network_services_edge_cache_origins, keyed the same as var.network_services_edge_cache_origins except keys with no project are omitted"
  value       = { for k, v in google_network_services_edge_cache_origin.network_services_edge_cache_origins : k => v.project if v.project != null && length(v.project) > 0 }
}
output "network_services_edge_cache_origins_protocol" {
  description = "Map of protocol values across all network_services_edge_cache_origins, keyed the same as var.network_services_edge_cache_origins except keys with no protocol are omitted"
  value       = { for k, v in google_network_services_edge_cache_origin.network_services_edge_cache_origins : k => v.protocol if v.protocol != null && length(v.protocol) > 0 }
}
output "network_services_edge_cache_origins_retry_conditions" {
  description = "Map of retry_conditions values across all network_services_edge_cache_origins, keyed the same as var.network_services_edge_cache_origins except keys with no retry_conditions are omitted"
  value       = { for k, v in google_network_services_edge_cache_origin.network_services_edge_cache_origins : k => v.retry_conditions if v.retry_conditions != null && length(v.retry_conditions) > 0 }
}
output "network_services_edge_cache_origins_terraform_labels" {
  description = "Map of terraform_labels values across all network_services_edge_cache_origins, keyed the same as var.network_services_edge_cache_origins except keys with no terraform_labels are omitted"
  value       = { for k, v in google_network_services_edge_cache_origin.network_services_edge_cache_origins : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "network_services_edge_cache_origins_timeout" {
  description = "Map of timeout values across all network_services_edge_cache_origins, keyed the same as var.network_services_edge_cache_origins except keys with no timeout are omitted"
  value       = { for k, v in google_network_services_edge_cache_origin.network_services_edge_cache_origins : k => one(v.timeout) if v.timeout != null && length(v.timeout) > 0 }
}

