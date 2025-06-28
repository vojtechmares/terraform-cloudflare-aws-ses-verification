# Changelog

Changelog is using format from [Keep a Changelog](https://keepachangelog.com/en/1.1.0/)

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
