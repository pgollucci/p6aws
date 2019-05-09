p6_aws_groundstation_resource_tag() {
    local resource_arn="$1"
    shift 1

    p6_run_write_cmd aws groundstation tag-resource --resource-arn $resource_arn "$@"
}
