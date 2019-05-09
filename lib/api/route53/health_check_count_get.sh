p6_aws_route53_health_check_count_get() {

    p6_run_read_cmd aws route53 get-health-check-count "$@"
}
