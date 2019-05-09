p6_aws_workspaces_client_properties_describe() {
    local resource_ids="$1"
    shift 1

    p6_log_and_run aws workspaces describe-client-properties --resource-ids $resource_ids "$@"
}
