p6_aws_greengrass_logger_definition_update() {
    local logger_definition_id="$1"
    shift 1

    p6_log_or_run aws greengrass update-logger-definition --logger-definition-id $logger_definition_id "$@"
}
