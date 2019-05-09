p6_aws_lakeformation_permissions_grant() {
    local principal="$1"
    local resource="$2"
    local permissions="$3"
    shift 3

    p6_run_write_cmd aws lakeformation grant-permissions --principal $principal --resource $resource --permissions $permissions "$@"
}
