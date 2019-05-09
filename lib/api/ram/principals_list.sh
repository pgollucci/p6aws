p6_aws_ram_principals_list() {
    local resource_owner="$1"
    shift 1

    p6_run_read_cmd aws ram list-principals --resource-owner $resource_owner "$@"
}
