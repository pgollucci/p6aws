p6_aws_ram_resource_shares_get() {
    local resource_owner="$1"
    shift 1

    p6_log_and_run aws ram get-resource-shares --resource-owner $resource_owner "$@"
}
