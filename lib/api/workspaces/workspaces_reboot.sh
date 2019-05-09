p6_aws_workspaces_workspaces_reboot() {
    local reboot_workspace_requests="$1"
    shift 1

    p6_log_or_run aws workspaces reboot-workspaces --reboot-workspace-requests $reboot_workspace_requests "$@"
}
