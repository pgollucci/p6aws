p6_aws_dax_tags_list() {
    local resource_name="$1"
    shift 1

    p6_run_read_cmd aws dax list-tags --resource-name $resource_name "$@"
}
