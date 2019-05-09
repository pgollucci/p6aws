p6_aws_workspaces_workspaces_create() {
    local workspaces="$1"
    shift 1

    p6_log_or_run aws workspaces create-workspaces --workspaces $workspaces "$@"
}
