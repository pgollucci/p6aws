######################################################################
#<
#
# Function:
#	p6_aws_application_insights_component_describe(resource_group_name, component_name)
#
#  Args:
#	resource_group_name - 
#	component_name - 
#
#>
######################################################################
p6_aws_application_insights_component_describe() {
    local resource_group_name="$1"
    local component_name="$2"
    shift 2

    p6_run_read_cmd aws application-insights describe-component --resource-group-name $resource_group_name --component-name $component_name "$@"
}