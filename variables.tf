variable "zero_trust_device_custom_profile_local_domain_fallbacks" {
  description = <<EOT
Map of zero_trust_device_custom_profile_local_domain_fallbacks, attributes below
Required:
    - account_id
    - domains
    - policy_id
EOT

  type = map(object({
    account_id = string
    domains = set(object({
      description = optional(string)
      dns_server  = optional(list(string))
      suffix      = string
    }))
    policy_id = string
  }))
}

