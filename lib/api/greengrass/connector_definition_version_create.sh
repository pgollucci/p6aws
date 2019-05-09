p6_aws_greengrass_connector_definition_version_create() {
    local connector_definition_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass create-connector-definition-version --connector-definition-id $connector_definition_id "$@"
}
