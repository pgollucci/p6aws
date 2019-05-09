p6_aws_workspaces_client_properties_modify() {
    local resource_id="$1"
    shift 1

    p6_log_or_run aws workspaces modify-client-properties --resource-id $resource_id "$@"
}
