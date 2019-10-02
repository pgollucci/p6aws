######################################################################
#<
#
# Function:
#	p6_aws_deploy_deployment_group_update(application_name, current_deployment_group_name)
#
#  Args:
#	application_name - 
#	current_deployment_group_name - 
#
#>
######################################################################
p6_aws_deploy_deployment_group_update() {
    local application_name="$1"
    local current_deployment_group_name="$2"
    shift 2

    p6_run_write_cmd aws deploy update-deployment-group --application-name $application_name --current-deployment-group-name $current_deployment_group_name "$@"
}