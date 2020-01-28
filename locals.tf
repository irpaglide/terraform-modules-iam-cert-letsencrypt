locals {
	private_key = "${acme_certificate.cert.private_key_pem}"
	certificate = "${acme_certificate.cert.certificate_pem}"
	issuer = "${acme_certificate.cert.issuer_pem}"
	certificate_arn = "${aws_iam_server_certificate.ssl_cert.arn}"
}
