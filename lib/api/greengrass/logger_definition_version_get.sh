p6_aws_greengrass_logger_definition_version_get() {
    local logger_definition_id="$1"
    local logger_definition_version_id="$2"
    shift 2

    p6_run_read_cmd aws greengrass get-logger-definition-version --logger-definition-id $logger_definition_id --logger-definition-version-id $logger_definition_version_id "$@"
}
