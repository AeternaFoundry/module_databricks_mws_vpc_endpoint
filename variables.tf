variable "mws_vpc_endpoints" {
  description = <<EOT
Map of mws_vpc_endpoints, attributes below
Required:
    - vpc_endpoint_name
Optional:
    - account_id
    - aws_account_id
    - aws_endpoint_service_id
    - aws_vpc_endpoint_id
    - region
    - state
    - use_case
    - vpc_endpoint_id
    - gcp_vpc_endpoint_info (block):
        - endpoint_region (required)
        - project_id (required)
        - psc_connection_id (optional)
        - psc_endpoint_name (required)
        - service_attachment_id (optional)
EOT

  type = map(object({
    vpc_endpoint_name       = string
    account_id              = optional(string)
    aws_account_id          = optional(string)
    aws_endpoint_service_id = optional(string)
    aws_vpc_endpoint_id     = optional(string)
    region                  = optional(string)
    state                   = optional(string)
    use_case                = optional(string)
    vpc_endpoint_id         = optional(string)
    gcp_vpc_endpoint_info = optional(object({
      endpoint_region       = string
      project_id            = string
      psc_connection_id     = optional(string)
      psc_endpoint_name     = string
      service_attachment_id = optional(string)
    }))
  }))
}

