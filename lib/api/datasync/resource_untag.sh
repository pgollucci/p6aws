p6_aws_datasync_resource_untag() {
    local resource_arn="$1"
    local keys="$2"
    shift 2

    p6_run_write_cmd aws datasync untag-resource --resource-arn $resource_arn --keys $keys "$@"
}
