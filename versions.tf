terraform {
  required_version = ">=1.9.5, <2.0.0"
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = ">=5.0.0, <6.0.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">=6.0.0, <7.0.0"
    }
  }
}
