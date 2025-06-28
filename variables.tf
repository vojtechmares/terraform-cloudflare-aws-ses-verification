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

variable "cloudflare_dns_record_ttl" {
  type        = number
  default     = 86400 # 24 hours
  description = "TTL of all Cloudflare DNS records created by the module (SPF, DKIM, and domain verification)"
}
