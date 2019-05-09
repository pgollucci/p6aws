p6_aws_dax_resource_tag() {
    local resource_name="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws dax tag-resource --resource-name $resource_name --tags $tags "$@"
}
