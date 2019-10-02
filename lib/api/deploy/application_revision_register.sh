######################################################################
#<
#
# Function:
#	p6_aws_deploy_application_revision_register(application_name)
#
#  Args:
#	application_name - 
#
#>
######################################################################
p6_aws_deploy_application_revision_register() {
    local application_name="$1"
    shift 1

    p6_run_write_cmd aws deploy register-application-revision --application-name $application_name "$@"
}