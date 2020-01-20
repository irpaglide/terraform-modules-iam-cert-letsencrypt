output "private_key_pem" {
value = "${local.private_key}"
}

output "certificate_pem" {
value = "${local.certificate}"
}

output "issuer_pem" {
value = "${local.issuer}"
}

output "certificate_arn" {
value = "${local.certificate_arn}"
}
