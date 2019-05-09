p6_aws_greengrass_resource_definition_update() {
    local resource_definition_id="$1"
    shift 1

    p6_log_or_run aws greengrass update-resource-definition --resource-definition-id $resource_definition_id "$@"
}
