p6_aws_workspaces_workspaces_create() {
    local workspaces="$1"
    shift 1

    p6_run_write_cmd aws workspaces create-workspaces --workspaces $workspaces "$@"
}
