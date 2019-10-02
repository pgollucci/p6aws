######################################################################
#<
#
# Function:
#	p6_aws_workspaces_workspaces_start(start_workspace_requests)
#
#  Args:
#	start_workspace_requests - 
#
#>
######################################################################
p6_aws_workspaces_workspaces_start() {
    local start_workspace_requests="$1"
    shift 1

    p6_run_write_cmd aws workspaces start-workspaces --start-workspace-requests $start_workspace_requests "$@"
}