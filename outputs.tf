output "private_key_pem" {
value = "${acme_certificate.cert.private_key_pem}"
}

output "certificate_pem" {
value = "${acme_certificate.cert.certificate_pem}"
}

output "issuer_pem" {
value = "${acme_certificate.cert.issuer_pem}"
}

output "certificate_arn" {
value = "${aws_iam_server_certificate.ssl_cert.arn}"
}
