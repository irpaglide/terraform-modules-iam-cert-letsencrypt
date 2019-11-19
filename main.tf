data "aws_route53_zone" "main" {
  name         = "${var.domain_name}"
  count = "${length(var.domain_name) > 0 ? 1 : 0}"
}

provider "acme" {
  server_url = "https://acme-v02.api.letsencrypt.org/directory"
}

resource "tls_private_key" "private_key" {
  algorithm = "RSA"
}

resource "acme_registration" "reg" {
  account_key_pem = "${tls_private_key.private_key.private_key_pem}"
  email_address   = "${var.email_address}"
}

resource "acme_certificate" "cert" {
  account_key_pem           = "${acme_registration.reg.account_key_pem}"
  common_name               = "${var.common_name}"
  dns_challenge {
    provider = "route53"
    config = {
      AWS_HOSTED_ZONE_ID = "${local.hosted_zone_id}"    
    }
  }
}

resource "aws_iam_server_certificate" "ssl_cert" {
  name             = "${var.iam_cert_name}"
  certificate_body = "${acme_certificate.cert.certificate_pem}"
  certificate_chain = "${acme_certificate.cert.issuer_pem}"
  private_key      = "${acme_certificate.cert.private_key_pem}"
}
