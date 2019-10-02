######################################################################
#<
#
# Function:
#	p6_aws_serverlessrepo_application_versions_list(application_id)
#
#  Args:
#	application_id - 
#
#>
######################################################################
p6_aws_serverlessrepo_application_versions_list() {
    local application_id="$1"
    shift 1

    p6_run_read_cmd aws serverlessrepo list-application-versions --application-id $application_id "$@"
}