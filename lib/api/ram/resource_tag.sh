p6_aws_ram_resource_tag() {
    local resource_share_arn="$1"
    local tags="$2"
    shift 2

    p6_log_or_run aws ram tag-resource --resource-share-arn $resource_share_arn --tags $tags "$@"
}
