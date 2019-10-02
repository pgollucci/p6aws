######################################################################
#<
#
# Function:
#	p6_aws_workspaces_client_properties_modify(resource_id, client_properties)
#
#  Args:
#	resource_id - 
#	client_properties - 
#
#>
######################################################################
p6_aws_workspaces_client_properties_modify() {
    local resource_id="$1"
    local client_properties="$2"
    shift 2

    p6_run_write_cmd aws workspaces modify-client-properties --resource-id $resource_id --client-properties $client_properties "$@"
}