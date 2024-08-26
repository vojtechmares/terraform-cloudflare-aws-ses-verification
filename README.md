# Terraform Module Cloudflare AWS SES Verification

This is a small module that wraps required Cloudflare and AWS resources for verifying a domain for SES.

> DO NOT FORGET: When adding a new second level domain, you must ask AWS support to disable SES sandbox before being able to send mail to other domains.

## Example usage

```terraform
module "verification" {
  source = "vojtechmares/aws-ses-verification/cloudflare"
  version = "0.1.0"

  domain = "example.com"
  zone_id = "<your Cloudflare zone ID>"
}
```

## Requirements

| Name | Version |
| ---  | ---     |
| Terraform           | `>=1.9.5, <2.0.0`  |
| Cloudflare provider | `>=4.40.0, <5.0.0` |
| AWS provider        | `>=5.64.0, <6.0.0` |

## Providers

| Name | Version |
| ---  | ---     |
| Cloudflare provider | `>=4.40.0, <5.0.0` |
| AWS provider        | `>=5.64.0, <6.0.0` |


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| `domain`  | FQDN for the domain you want to create the SES verification for. | `string` | n/a | yes |
| `zone_id` | Cloudflare Zone ID                                               | `string` | n/a | yes |

## Outputs

No outputs.
