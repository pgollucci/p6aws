######################################################################
#<
#
# Function:
#	p6_aws_deploy_application_get(application_name)
#
#  Args:
#	application_name - 
#
#>
######################################################################
p6_aws_deploy_application_get() {
    local application_name="$1"
    shift 1

    p6_run_read_cmd aws deploy get-application --application-name $application_name "$@"
}