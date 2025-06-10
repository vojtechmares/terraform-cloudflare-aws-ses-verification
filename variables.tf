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
  default     = true
  description = "Create an SPF record for the domain."
}

variable "spf_comment" {
  type        = string
  description = "Optional comment to add to the SPF DNS record"
  default     = null
}
