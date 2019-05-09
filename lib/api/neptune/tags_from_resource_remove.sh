p6_aws_neptune_tags_from_resource_remove() {
    local resource_name="$1"
    local tag_keys="$2"
    shift 2

    p6_log_or_run aws neptune remove-tags-from-resource --resource-name $resource_name --tag-keys $tag_keys "$@"
}
