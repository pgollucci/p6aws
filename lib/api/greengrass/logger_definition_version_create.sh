p6_aws_greengrass_logger_definition_version_create() {
    local logger_definition_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass create-logger-definition-version --logger-definition-id $logger_definition_id "$@"
}
