######################################################################
#<
#
# Function:
#	p6_aws_deploy_deployment_group_delete(application_name, deployment_group_name)
#
#  Args:
#	application_name - 
#	deployment_group_name - 
#
#>
######################################################################
p6_aws_deploy_deployment_group_delete() {
    local application_name="$1"
    local deployment_group_name="$2"
    shift 2

    p6_run_write_cmd aws deploy delete-deployment-group --application-name $application_name --deployment-group-name $deployment_group_name "$@"
}