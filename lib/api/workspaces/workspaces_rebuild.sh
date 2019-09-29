######################################################################
#<
#
# Function:
#      = p6_aws_workspaces_workspaces_rebuild(rebuild_workspace_requests)
#
# Arg(s):
#    rebuild_workspace_requests - 
#
#
#>
######################################################################
p6_aws_workspaces_workspaces_rebuild() {
    local rebuild_workspace_requests="$1"
    shift 1

    p6_run_write_cmd aws workspaces rebuild-workspaces --rebuild-workspace-requests $rebuild_workspace_requests "$@"
}