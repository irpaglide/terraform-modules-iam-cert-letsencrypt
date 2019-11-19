locals {
	hosted_zone_id = "${length(var.domain_name) > 0 ? data.aws_route53_zone.main.zone_id : var.hosted_zone_id }"
}