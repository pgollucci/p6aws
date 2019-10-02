######################################################################
#<
#
# Function:
#	p6_aws_application_insights_components_list(resource_group_name)
#
#  Args:
#	resource_group_name - 
#
#>
######################################################################
p6_aws_application_insights_components_list() {
    local resource_group_name="$1"
    shift 1

    p6_run_read_cmd aws application-insights list-components --resource-group-name $resource_group_name "$@"
}