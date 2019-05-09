p6_aws_ssm_tags_from_resource_remove() {
    local resource_type="$1"
    local resource_id="$2"
    local tag_keys="$3"
    shift 3

    p6_run_write_cmd aws ssm remove-tags-from-resource --resource-type $resource_type --resource-id $resource_id --tag-keys $tag_keys "$@"
}
