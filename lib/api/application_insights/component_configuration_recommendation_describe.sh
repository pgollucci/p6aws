######################################################################
#<
#
# Function:
#      = p6_aws_application_insights_component_configuration_recommendation_describe(resource_group_name, component_name, tier)
#
# Arg(s):
#    resource_group_name - 
#    component_name - 
#    tier - 
#
#
#>
######################################################################
p6_aws_application_insights_component_configuration_recommendation_describe() {
    local resource_group_name="$1"
    local component_name="$2"
    local tier="$3"
    shift 3

    p6_run_read_cmd aws application-insights describe-component-configuration-recommendation --resource-group-name $resource_group_name --component-name $component_name --tier $tier "$@"
}