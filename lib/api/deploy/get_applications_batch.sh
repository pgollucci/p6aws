######################################################################
#<
#
# Function:
#	p6_aws_deploy_get_applications_batch(application_names)
#
#  Args:
#	application_names - 
#
#>
######################################################################
p6_aws_deploy_get_applications_batch() {
    local application_names="$1"
    shift 1

    p6_run_read_cmd aws deploy batch-get-applications --application-names $application_names "$@"
}