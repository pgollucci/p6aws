p6_aws_route53_traffic_policy_version_create() {
    local id="$1"
    local document="$2"
    shift 2

    p6_run_write_cmd aws route53 create-traffic-policy-version --id $id --document $document "$@"
}
