######################################################################
#<
#
# Function:
#      = p6_aws_application_insights_component_create(resource_group_name, component_name, resource_list)
#
# Arg(s):
#    resource_group_name - 
#    component_name - 
#    resource_list - 
#
#
#>
######################################################################
p6_aws_application_insights_component_create() {
    local resource_group_name="$1"
    local component_name="$2"
    local resource_list="$3"
    shift 3

    p6_run_write_cmd aws application-insights create-component --resource-group-name $resource_group_name --component-name $component_name --resource-list $resource_list "$@"
}