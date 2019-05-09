p6_aws_ram_resource_untag() {
    local resource_share_arn="$1"
    local tag_keys="$2"
    shift 2

    p6_log_or_run aws ram untag-resource --resource-share-arn $resource_share_arn --tag-keys $tag_keys "$@"
}
