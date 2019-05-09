p6_aws_waf_logging_configuration_get() {
    local resource_arn="$1"
    shift 1

    p6_log_and_run aws waf get-logging-configuration --resource-arn $resource_arn "$@"
}
