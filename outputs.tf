output "mws_vpc_endpoints_id" {
  description = "Map of id values across all mws_vpc_endpoints, keyed the same as var.mws_vpc_endpoints except keys with no id are omitted"
  value       = { for k, v in databricks_mws_vpc_endpoint.mws_vpc_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mws_vpc_endpoints_account_id" {
  description = "Map of account_id values across all mws_vpc_endpoints, keyed the same as var.mws_vpc_endpoints except keys with no account_id are omitted"
  value       = { for k, v in databricks_mws_vpc_endpoint.mws_vpc_endpoints : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "mws_vpc_endpoints_aws_account_id" {
  description = "Map of aws_account_id values across all mws_vpc_endpoints, keyed the same as var.mws_vpc_endpoints except keys with no aws_account_id are omitted"
  value       = { for k, v in databricks_mws_vpc_endpoint.mws_vpc_endpoints : k => v.aws_account_id if v.aws_account_id != null && length(v.aws_account_id) > 0 }
}
output "mws_vpc_endpoints_aws_endpoint_service_id" {
  description = "Map of aws_endpoint_service_id values across all mws_vpc_endpoints, keyed the same as var.mws_vpc_endpoints except keys with no aws_endpoint_service_id are omitted"
  value       = { for k, v in databricks_mws_vpc_endpoint.mws_vpc_endpoints : k => v.aws_endpoint_service_id if v.aws_endpoint_service_id != null && length(v.aws_endpoint_service_id) > 0 }
}
output "mws_vpc_endpoints_aws_vpc_endpoint_id" {
  description = "Map of aws_vpc_endpoint_id values across all mws_vpc_endpoints, keyed the same as var.mws_vpc_endpoints except keys with no aws_vpc_endpoint_id are omitted"
  value       = { for k, v in databricks_mws_vpc_endpoint.mws_vpc_endpoints : k => v.aws_vpc_endpoint_id if v.aws_vpc_endpoint_id != null && length(v.aws_vpc_endpoint_id) > 0 }
}
output "mws_vpc_endpoints_gcp_vpc_endpoint_info" {
  description = "Map of gcp_vpc_endpoint_info values across all mws_vpc_endpoints, keyed the same as var.mws_vpc_endpoints except keys with no gcp_vpc_endpoint_info are omitted"
  value       = { for k, v in databricks_mws_vpc_endpoint.mws_vpc_endpoints : k => one(v.gcp_vpc_endpoint_info) if v.gcp_vpc_endpoint_info != null && length(v.gcp_vpc_endpoint_info) > 0 }
}
output "mws_vpc_endpoints_region" {
  description = "Map of region values across all mws_vpc_endpoints, keyed the same as var.mws_vpc_endpoints except keys with no region are omitted"
  value       = { for k, v in databricks_mws_vpc_endpoint.mws_vpc_endpoints : k => v.region if v.region != null && length(v.region) > 0 }
}
output "mws_vpc_endpoints_state" {
  description = "Map of state values across all mws_vpc_endpoints, keyed the same as var.mws_vpc_endpoints except keys with no state are omitted"
  value       = { for k, v in databricks_mws_vpc_endpoint.mws_vpc_endpoints : k => v.state if v.state != null && length(v.state) > 0 }
}
output "mws_vpc_endpoints_use_case" {
  description = "Map of use_case values across all mws_vpc_endpoints, keyed the same as var.mws_vpc_endpoints except keys with no use_case are omitted"
  value       = { for k, v in databricks_mws_vpc_endpoint.mws_vpc_endpoints : k => v.use_case if v.use_case != null && length(v.use_case) > 0 }
}
output "mws_vpc_endpoints_vpc_endpoint_id" {
  description = "Map of vpc_endpoint_id values across all mws_vpc_endpoints, keyed the same as var.mws_vpc_endpoints except keys with no vpc_endpoint_id are omitted"
  value       = { for k, v in databricks_mws_vpc_endpoint.mws_vpc_endpoints : k => v.vpc_endpoint_id if v.vpc_endpoint_id != null && length(v.vpc_endpoint_id) > 0 }
}
output "mws_vpc_endpoints_vpc_endpoint_name" {
  description = "Map of vpc_endpoint_name values across all mws_vpc_endpoints, keyed the same as var.mws_vpc_endpoints except keys with no vpc_endpoint_name are omitted"
  value       = { for k, v in databricks_mws_vpc_endpoint.mws_vpc_endpoints : k => v.vpc_endpoint_name if v.vpc_endpoint_name != null && length(v.vpc_endpoint_name) > 0 }
}

