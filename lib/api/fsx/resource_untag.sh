p6_aws_fsx_resource_untag() {
    local resource_arn="$1"
    local tag_keys="$2"
    shift 2

    p6_log_or_run aws fsx untag-resource --resource-arn $resource_arn --tag-keys $tag_keys "$@"
}
