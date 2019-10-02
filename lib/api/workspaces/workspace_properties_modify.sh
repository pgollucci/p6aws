######################################################################
#<
#
# Function:
#	p6_aws_workspaces_workspace_properties_modify(workspace_id, workspace_properties)
#
#  Args:
#	workspace_id - 
#	workspace_properties - 
#
#>
######################################################################
p6_aws_workspaces_workspace_properties_modify() {
    local workspace_id="$1"
    local workspace_properties="$2"
    shift 2

    p6_run_write_cmd aws workspaces modify-workspace-properties --workspace-id $workspace_id --workspace-properties $workspace_properties "$@"
}