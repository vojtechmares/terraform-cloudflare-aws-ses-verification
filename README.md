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
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >=4.9.0 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | >=3.12.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >=4.9.0 |
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | >=3.12.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ses_domain_dkim.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_domain_dkim) | resource |
| [aws_ses_domain_identity.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_domain_identity) | resource |
| [aws_ses_domain_identity_verification.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_domain_identity_verification) | resource |
| [cloudflare_record.dkim](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |
| [cloudflare_record.domain_verification](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |
| [cloudflare_record.spf](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain"></a> [domain](#input\_domain) | FQDN for the domain you want to create the SES verification for. | `string` | n/a | yes |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | Cloudflare zone ID | `string` | n/a | yes |

## Outputs

No outputs.
