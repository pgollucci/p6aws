######################################################################
#<
#
# Function:
#	p6_aws_serverlessrepo_application_update(application_id)
#
#  Args:
#	application_id - 
#
#>
######################################################################
p6_aws_serverlessrepo_application_update() {
    local application_id="$1"
    shift 1

    p6_run_write_cmd aws serverlessrepo update-application --application-id $application_id "$@"
}