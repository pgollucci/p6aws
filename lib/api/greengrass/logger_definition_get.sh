p6_aws_greengrass_logger_definition_get() {
    local logger_definition_id="$1"
    shift 1

    p6_log_and_run aws greengrass get-logger-definition --logger-definition-id $logger_definition_id "$@"
}
