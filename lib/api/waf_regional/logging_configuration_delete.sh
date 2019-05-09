p6_aws_waf_regional_logging_configuration_delete() {
    local resource_arn="$1"
    shift 1

    p6_log_or_run aws waf-regional delete-logging-configuration --resource-arn $resource_arn "$@"
}
