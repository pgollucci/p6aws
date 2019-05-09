p6_aws_lakeformation_effective_permissions_for_path_get() {
    local resource_arn="$1"
    shift 1

    p6_run_read_cmd aws lakeformation get-effective-permissions-for-path --resource-arn $resource_arn "$@"
}
