######################################################################
#<
#
# Function:
#	p6_aws_application_insights_component_configuration_update(resource_group_name, component_name)
#
#  Args:
#	resource_group_name - 
#	component_name - 
#
#>
######################################################################
p6_aws_application_insights_component_configuration_update() {
    local resource_group_name="$1"
    local component_name="$2"
    shift 2

    p6_run_write_cmd aws application-insights update-component-configuration --resource-group-name $resource_group_name --component-name $component_name "$@"
}