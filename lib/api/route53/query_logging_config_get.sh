p6_aws_route53_query_logging_config_get() {
    local id="$1"
    shift 1

    p6_log_and_run aws route53 get-query-logging-config --id $id "$@"
}
