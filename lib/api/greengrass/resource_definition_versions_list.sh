p6_aws_greengrass_resource_definition_versions_list() {
    local resource_definition_id="$1"
    shift 1

    p6_log_and_run aws greengrass list-resource-definition-versions --resource-definition-id $resource_definition_id "$@"
}
