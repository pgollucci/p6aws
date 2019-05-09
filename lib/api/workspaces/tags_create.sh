p6_aws_workspaces_tags_create() {
    local resource_id="$1"
    local tags="$2"
    shift 2

    p6_log_or_run aws workspaces create-tags --resource-id $resource_id --tags $tags "$@"
}
