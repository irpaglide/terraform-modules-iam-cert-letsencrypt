output "private_key_pem" {
 count = "${var.enabled}"
value = "${acme_certificate.cert.private_key_pem}"
}

output "certificate_pem" {
count = "${var.enabled}"
value = "${acme_certificate.cert.certificate_pem}"
}

output "issuer_pem" {
count = "${var.enabled}"
value = "${acme_certificate.cert.issuer_pem}"
}

output "certificate_arn" {
count = "${var.enabled}"
value = "${aws_iam_server_certificate.ssl_cert.arn}"
}
