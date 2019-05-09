p6_aws_workdocs_resource_permission_remove() {
    local resource_id="$1"
    local principal_id="$2"
    shift 2

    p6_log_or_run aws workdocs remove-resource-permission --resource-id $resource_id --principal-id $principal_id "$@"
}
