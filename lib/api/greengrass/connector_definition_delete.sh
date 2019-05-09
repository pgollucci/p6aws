p6_aws_greengrass_connector_definition_delete() {
    local connector_definition_id="$1"
    shift 1

    p6_log_or_run aws greengrass delete-connector-definition --connector-definition-id $connector_definition_id "$@"
}
