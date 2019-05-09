p6_aws_greengrass_resource_definition_version_create() {
    local resource_definition_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass create-resource-definition-version --resource-definition-id $resource_definition_id "$@"
}
