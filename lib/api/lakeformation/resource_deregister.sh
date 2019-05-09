p6_aws_lakeformation_resource_deregister() {
    local resource_arn="$1"
    shift 1

    p6_run_write_cmd aws lakeformation deregister-resource --resource-arn $resource_arn "$@"
}
