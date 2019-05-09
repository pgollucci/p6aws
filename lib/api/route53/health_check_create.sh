p6_aws_route53_health_check_create() {
    local caller_reference="$1"
    local health_check_config="$2"
    shift 2

    p6_log_or_run aws route53 create-health-check --caller-reference $caller_reference --health-check-config $health_check_config "$@"
}
