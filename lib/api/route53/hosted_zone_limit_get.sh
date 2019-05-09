p6_aws_route53_hosted_zone_limit_get() {
    local type="$1"
    local hosted_zone_id="$2"
    shift 2

    p6_run_read_cmd aws route53 get-hosted-zone-limit --type $type --hosted-zone-id $hosted_zone_id "$@"
}
