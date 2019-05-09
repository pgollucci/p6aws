p6_aws_workspaces_workspaces_terminate() {
    local terminate_workspace_requests="$1"
    shift 1

    p6_log_or_run aws workspaces terminate-workspaces --terminate-workspace-requests $terminate_workspace_requests "$@"
}
