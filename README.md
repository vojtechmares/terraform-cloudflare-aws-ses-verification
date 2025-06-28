# Terraform Module Cloudflare AWS SES Verification

This is a small module that wraps required Cloudflare and AWS resources for verifying a domain for SES.

> DO NOT FORGET: When adding a new second level domain, you must ask AWS support to disable SES sandbox before being able to send mail to other domains.

## Example usage

```terraform
module "verification" {
  source = "vojtechmares/aws-ses-verification/cloudflare"
  version = "1.0.0"

  domain = "example.com"
  zone_id = "<your Cloudflare zone ID>"

  # Optional: only set to true if you do NOT already have an SPF record. This option defaults to true if ommitted.
  create_spf_record = true

  # Optional: set TTL for all `cloudflare_dns_record` resources created by the module (SPF, DKIM, domain verification)
  cloudflare_dns_record_ttl = 86400
}
```

## Requirements

| Name                | Version            |
| ------------------- | ------------------ |
| Terraform           | `>=1.9.5, <2.0.0`  |
| Cloudflare provider | `>=5.0.0, <6.0.0`  |
| AWS provider        | `>=6.0.0, <7.0.0`  |

## Providers

| Name                | Version            |
| ------------------- | ------------------ |
| Cloudflare provider | `>=5.0.0, <6.0.0`  |
| AWS provider        | `>=6.0.0, <7.0.0`  |

## Inputs

| Name      | Description                                                      | Type     | Default | Required |
| --------- | ---------------------------------------------------------------- | -------- | ------- | :------: |
| `domain`  | FQDN for the domain you want to create the SES verification for. | `string` | n/a     |   yes    |
| `zone_id` | Cloudflare Zone ID                                               | `string` | n/a     |   yes    |
| `create_spf_record` | If an SPF record should be created by the module. Disable, if you have your own SPF record.                                               | `bool` | `true`     |   no    |
| `cloudflare_dns_record_ttl` | TTL for all Cloudflare DNS records created by this module                                                | `number` | `86400`     |   no    |

## Outputs

No outputs.
