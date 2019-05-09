p6_aws_greengrass_resource_definition_version_create() {
    local resource_definition_id="$1"
    shift 1

    p6_log_or_run aws greengrass create-resource-definition-version --resource-definition-id $resource_definition_id "$@"
}
