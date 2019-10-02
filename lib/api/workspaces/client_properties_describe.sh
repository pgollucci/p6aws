######################################################################
#<
#
# Function:
#	p6_aws_workspaces_client_properties_describe(resource_ids)
#
#  Args:
#	resource_ids - 
#
#>
######################################################################
p6_aws_workspaces_client_properties_describe() {
    local resource_ids="$1"
    shift 1

    p6_run_read_cmd aws workspaces describe-client-properties --resource-ids $resource_ids "$@"
}