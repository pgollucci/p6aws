p6_aws_pinpoint_resource_untag() {
    local resource_arn="$1"
    local tag_keys="$2"
    shift 2

    p6_run_write_cmd aws pinpoint untag-resource --resource-arn $resource_arn --tag-keys $tag_keys "$@"
}
