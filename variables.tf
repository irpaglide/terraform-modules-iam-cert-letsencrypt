variable "common_name" {}
variable "subject_alternative_names" {
default = [""]
}
variable "email_address" {
default = "jmgarcia@irpaglide.com"
}
variable "iam_cert_name" {
default = "default_certificate"
}

variable "domain_name" { 
	default = ""
}

variable "hosted_zone_id" { 
	default = ""
}
variable "enabled" {
default = true
}
