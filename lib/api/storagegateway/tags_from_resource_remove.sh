p6_aws_storagegateway_tags_from_resource_remove() {
    local resource_arn="$1"
    local tag_keys="$2"
    shift 2

    p6_log_or_run aws storagegateway remove-tags-from-resource --resource-arn $resource_arn --tag-keys $tag_keys "$@"
}
