######################################################################
#<
#
# Function:
#	p6_aws_workspaces_workspaces_reboot(reboot_workspace_requests)
#
#  Args:
#	reboot_workspace_requests - 
#
#>
######################################################################
p6_aws_workspaces_workspaces_reboot() {
    local reboot_workspace_requests="$1"
    shift 1

    p6_run_write_cmd aws workspaces reboot-workspaces --reboot-workspace-requests $reboot_workspace_requests "$@"
}