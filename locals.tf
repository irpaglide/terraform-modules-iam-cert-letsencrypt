locals {
	private_key = "${enabled == true ? acme_certificate.cert.private_key_pem : "disabled"}"
	certificate = "${enabled == true ? acme_certificate.cert.certificate_pem : "disabled"}"
	issuer = "${enabled == true ? acme_certificate.cert.issuer_pem : "disabled" }"
	certificate_arn = "${enabled == true ? aws_iam_server_certificate.ssl_cert.arn : "disabled" }"
}