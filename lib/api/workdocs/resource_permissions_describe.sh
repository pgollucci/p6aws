p6_aws_workdocs_resource_permissions_describe() {
    local resource_id="$1"
    shift 1

    p6_log_and_run aws workdocs describe-resource-permissions --resource-id $resource_id "$@"
}
