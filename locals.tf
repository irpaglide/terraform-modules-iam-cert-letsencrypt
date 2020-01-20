locals {
	private_key = "${var.enabled == true ? acme_certificate.cert.private_key_pem : "disabled"}"
	certificate = "${var.enabled == true ? acme_certificate.cert.certificate_pem : "disabled"}"
	issuer = "${var.enabled == true ? acme_certificate.cert.issuer_pem : "disabled" }"
	certificate_arn = "${var.enabled == true ? aws_iam_server_certificate.ssl_cert.arn : "disabled" }"
}