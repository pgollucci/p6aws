p6_aws_greengrass_connector_definition_get() {
    local connector_definition_id="$1"
    shift 1

    p6_log_and_run aws greengrass get-connector-definition --connector-definition-id $connector_definition_id "$@"
}
