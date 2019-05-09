p6_aws_workspaces_tags_describe() {
    local resource_id="$1"
    shift 1

    p6_log_and_run aws workspaces describe-tags --resource-id $resource_id "$@"
}
