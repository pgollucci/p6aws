######################################################################
#<
#
# Function:
#	p6_aws_application_insights_application_create(resource_group_name)
#
#  Args:
#	resource_group_name - 
#
#>
######################################################################
p6_aws_application_insights_application_create() {
    local resource_group_name="$1"
    shift 1

    p6_run_write_cmd aws application-insights create-application --resource-group-name $resource_group_name "$@"
}