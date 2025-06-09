variable "zone_id" {
  type        = string
  description = "Cloudflare zone ID"
}

variable "domain" {
  type        = string
  description = "FQDN for the domain you want to create the SES verification for."
}

variable "create_spf_record" {
  type        = bool
  default     = false
  description = "Create an SPF record for the domain."
}
