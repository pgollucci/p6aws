######################################################################
#<
#
# Function:
#      = p6_aws_workspaces_workspaces_terminate(terminate_workspace_requests)
#
# Arg(s):
#    terminate_workspace_requests - 
#
#
#>
######################################################################
p6_aws_workspaces_workspaces_terminate() {
    local terminate_workspace_requests="$1"
    shift 1

    p6_run_write_cmd aws workspaces terminate-workspaces --terminate-workspace-requests $terminate_workspace_requests "$@"
}