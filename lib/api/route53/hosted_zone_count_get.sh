p6_aws_route53_hosted_zone_count_get() {

    p6_run_read_cmd aws route53 get-hosted-zone-count "$@"
}
