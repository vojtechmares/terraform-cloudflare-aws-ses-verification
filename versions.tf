terraform {
  required_version = ">=1.1.0"
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = ">=3.12.1"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">=4.9.0"
    }
  }
}
