p6_aws_workdocs_all_resource_permissions_remove() {
    local resource_id="$1"
    shift 1

    p6_log_or_run aws workdocs remove-all-resource-permissions --resource-id $resource_id "$@"
}
