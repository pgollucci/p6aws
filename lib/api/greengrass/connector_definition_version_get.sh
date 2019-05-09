p6_aws_greengrass_connector_definition_version_get() {
    local connector_definition_id="$1"
    local connector_definition_version_id="$2"
    shift 2

    p6_log_and_run aws greengrass get-connector-definition-version --connector-definition-id $connector_definition_id --connector-definition-version-id $connector_definition_version_id "$@"
}
