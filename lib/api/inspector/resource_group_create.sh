p6_aws_inspector_resource_group_create() {
    local resource_group_tags="$1"
    shift 1

    p6_log_or_run aws inspector create-resource-group --resource-group-tags $resource_group_tags "$@"
}
