p6_aws_route53_traffic_policy_versions_list() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws route53 list-traffic-policy-versions --id $id "$@"
}
