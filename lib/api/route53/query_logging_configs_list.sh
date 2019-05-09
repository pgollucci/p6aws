p6_aws_route53_query_logging_configs_list() {

    p6_run_read_cmd aws route53 list-query-logging-configs "$@"
}
