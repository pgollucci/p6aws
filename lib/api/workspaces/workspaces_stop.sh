######################################################################
#<
#
# Function:
#	p6_aws_workspaces_workspaces_stop(stop_workspace_requests)
#
#  Args:
#	stop_workspace_requests - 
#
#>
######################################################################
p6_aws_workspaces_workspaces_stop() {
    local stop_workspace_requests="$1"
    shift 1

    p6_run_write_cmd aws workspaces stop-workspaces --stop-workspace-requests $stop_workspace_requests "$@"
}