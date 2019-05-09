p6_aws_greengrass_resource_definition_delete() {
    local resource_definition_id="$1"
    shift 1

    p6_log_or_run aws greengrass delete-resource-definition --resource-definition-id $resource_definition_id "$@"
}
