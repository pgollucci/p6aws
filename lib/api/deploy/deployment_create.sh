######################################################################
#<
#
# Function:
#	p6_aws_deploy_deployment_create(application_name)
#
#  Args:
#	application_name - 
#
#>
######################################################################
p6_aws_deploy_deployment_create() {
    local application_name="$1"
    shift 1

    p6_run_write_cmd aws deploy create-deployment --application-name $application_name "$@"
}