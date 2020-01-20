output "private_key_pem" {
value = "${acme_certificate.cert.private_key_pem}"
value = "${local.private_key}"
}

output "certificate_pem" {
value = "${acme_certificate.cert.certificate_pem}"
value = "${local.certificate}"
}

output "issuer_pem" {
value = "${acme_certificate.cert.issuer_pem}"
value = "${local.issuer}"
}

output "certificate_arn" {
value = "${aws_iam_server_certificate.ssl_cert.arn}"
value = "${local.certificate_arn}"
}
