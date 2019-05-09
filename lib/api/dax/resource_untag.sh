p6_aws_dax_resource_untag() {
    local resource_name="$1"
    local tag_keys="$2"
    shift 2

    p6_run_write_cmd aws dax untag-resource --resource-name $resource_name --tag-keys $tag_keys "$@"
}
