p6_aws_storagegateway_tags_to_resource_add() {
    local resource_arn="$1"
    local tags="$2"
    shift 2

    p6_log_or_run aws storagegateway add-tags-to-resource --resource-arn $resource_arn --tags $tags "$@"
}
