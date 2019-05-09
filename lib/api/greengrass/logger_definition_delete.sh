p6_aws_greengrass_logger_definition_delete() {
    local logger_definition_id="$1"
    shift 1

    p6_log_or_run aws greengrass delete-logger-definition --logger-definition-id $logger_definition_id "$@"
}
