resource "aws_ses_domain_identity" "this" {
  domain = var.domain
}

resource "aws_ses_domain_identity_verification" "this" {
  domain     = aws_ses_domain_identity.this.id
  depends_on = [cloudflare_record.domain_verification]
}

resource "aws_ses_domain_dkim" "this" {
  domain = var.domain
}

resource "cloudflare_record" "domain_verification" {
  zone_id = var.zone_id
  name    = "_amazonses.${aws_ses_domain_identity.this.id}"
  type    = "TXT"
  content = aws_ses_domain_identity.this.verification_token
}

resource "cloudflare_record" "dkim" {
  zone_id = var.zone_id
  count   = 3
  name = format(
    "%s._domainkey.%s",
    element(aws_ses_domain_dkim.this.dkim_tokens, count.index),
    var.domain,
  )
  type    = "CNAME"
  content = "${element(aws_ses_domain_dkim.this.dkim_tokens, count.index)}.dkim.amazonses.com"
}

resource "cloudflare_record" "spf" {
  count   = var.create_spf_record ? 1 : 0
  zone_id = var.zone_id
  name    = var.domain
  type    = "TXT"
  content = "v=spf1 include:amazonses.com -all"
}
