p6_aws_docdb_tags_to_resource_add() {
    local resource_name="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws docdb add-tags-to-resource --resource-name $resource_name --tags $tags "$@"
}
