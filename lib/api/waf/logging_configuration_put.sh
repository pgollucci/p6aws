p6_aws_waf_logging_configuration_put() {
    local logging_configuration="$1"
    shift 1

    p6_log_or_run aws waf put-logging-configuration --logging-configuration $logging_configuration "$@"
}
