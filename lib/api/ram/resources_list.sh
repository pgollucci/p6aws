p6_aws_ram_resources_list() {
    local resource_owner="$1"
    shift 1

    p6_log_and_run aws ram list-resources --resource-owner $resource_owner "$@"
}
