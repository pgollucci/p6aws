p6_aws_lakeformation_resource_update() {
    local role_arn="$1"
    local resource_arn="$2"
    shift 2

    p6_run_write_cmd aws lakeformation update-resource --role-arn $role_arn --resource-arn $resource_arn "$@"
}
