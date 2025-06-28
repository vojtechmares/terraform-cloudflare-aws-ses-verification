# Changelog

Changelog is using format from [Keep a Changelog](https://keepachangelog.com/en/1.1.0/)

## [v1.0.0] - 2025-06-28

### BREAKING CHANGES

- With migration to Cloudflare provider v5, resources had to be renamed from `cloudflare_record` to `cloudflare_dns_record` which is a breaking change for your Terraform state. To seamlessly upgrade, please follow [Cloudflare provider upgrade guide from v4.x to v5](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/guides/version-5-upgrade).

### Added

- Added variable `cloudflare_dns_record_ttl` to configure all Cloudflare DNS records TTLs', default is `86400` seconds (or 24 hours)

### Changed

- Bumped `hashicorp/aws` Terraform provider to version range `>=6.0.0, <7.0.0`
- Bumped `cloudflare/cloudflare` Terraform provider to version range `>=5.0.0, <6.0.0`

## [v0.3.1] - 2025-06-28

### Fixed

- SPF record string value must be a quoted string.

## [v0.3.0] - 2025-06-09

### Added

- Add `create_spf_record` flag, default is true to make SPF record optional. This is done for cases, when you already have an existing SPF record. (#8, thanks @Wasca)

## [v0.2.1] - 2025-03-13

### Changed

- Use `content` instead of `value` for cloudflare_record resource (value is deprecated)

## [v0.2.0] - 2024-11-18

### Changed

- Updated Cloudflare provider and lock it to `v4.x` version
- Updated AWS provider and lock it t `v5.x` version

## [v0.1.0] - 2022-04-12

Initial release of the project.
