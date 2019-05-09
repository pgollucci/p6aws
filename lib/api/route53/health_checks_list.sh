p6_aws_route53_health_checks_list() {

    p6_run_read_cmd aws route53 list-health-checks "$@"
}
