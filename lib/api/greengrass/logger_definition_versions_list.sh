p6_aws_greengrass_logger_definition_versions_list() {
    local logger_definition_id="$1"
    shift 1

    p6_log_and_run aws greengrass list-logger-definition-versions --logger-definition-id $logger_definition_id "$@"
}
