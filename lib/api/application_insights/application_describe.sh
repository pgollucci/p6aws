######################################################################
#<
#
# Function:
#	p6_aws_application_insights_application_describe(resource_group_name)
#
#  Args:
#	resource_group_name - 
#
#>
######################################################################
p6_aws_application_insights_application_describe() {
    local resource_group_name="$1"
    shift 1

    p6_run_read_cmd aws application-insights describe-application --resource-group-name $resource_group_name "$@"
}