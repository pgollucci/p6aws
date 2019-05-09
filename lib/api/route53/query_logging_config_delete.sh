p6_aws_route53_query_logging_config_delete() {
    local id="$1"
    shift 1

    p6_log_or_run aws route53 delete-query-logging-config --id $id "$@"
}
