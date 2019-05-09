p6_aws_workspaces_workspace_image_delete() {
    local image_id="$1"
    shift 1

    p6_log_or_run aws workspaces delete-workspace-image --image-id $image_id "$@"
}
