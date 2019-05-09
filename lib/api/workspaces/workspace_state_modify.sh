p6_aws_workspaces_workspace_state_modify() {
    local workspace_id="$1"
    local workspace_state="$2"
    shift 2

    p6_log_or_run aws workspaces modify-workspace-state --workspace-id $workspace_id --workspace-state $workspace_state "$@"
}
