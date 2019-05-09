p6_aws_ram_principals_list() {
    local resource_owner="$1"
    shift 1

    p6_log_and_run aws ram list-principals --resource-owner $resource_owner "$@"
}
