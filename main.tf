resource "databricks_mws_vpc_endpoint" "mws_vpc_endpoints" {
  for_each = var.mws_vpc_endpoints

  vpc_endpoint_name       = each.value.vpc_endpoint_name
  account_id              = each.value.account_id
  aws_account_id          = each.value.aws_account_id
  aws_endpoint_service_id = each.value.aws_endpoint_service_id
  aws_vpc_endpoint_id     = each.value.aws_vpc_endpoint_id
  region                  = each.value.region
  state                   = each.value.state
  use_case                = each.value.use_case
  vpc_endpoint_id         = each.value.vpc_endpoint_id

  dynamic "gcp_vpc_endpoint_info" {
    for_each = each.value.gcp_vpc_endpoint_info != null ? [each.value.gcp_vpc_endpoint_info] : []
    content {
      endpoint_region       = gcp_vpc_endpoint_info.value.endpoint_region
      project_id            = gcp_vpc_endpoint_info.value.project_id
      psc_connection_id     = gcp_vpc_endpoint_info.value.psc_connection_id
      psc_endpoint_name     = gcp_vpc_endpoint_info.value.psc_endpoint_name
      service_attachment_id = gcp_vpc_endpoint_info.value.service_attachment_id
    }
  }
}

