p6_aws_workspaces_workspace_image_delete() {
    local image_id="$1"
    shift 1

    p6_run_write_cmd aws workspaces delete-workspace-image --image-id $image_id "$@"
}
