terraform {
  required_version = ">=1.9.5, <2.0.0"
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = ">=4.40.0, <5.0.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.64.0"
    }
  }
}
