######################################################################
#<
#
# Function:
#	p6_aws_deploy_deployment_group_create(application_name, deployment_group_name, service_role_arn)
#
#  Args:
#	application_name - 
#	deployment_group_name - 
#	service_role_arn - 
#
#>
######################################################################
p6_aws_deploy_deployment_group_create() {
    local application_name="$1"
    local deployment_group_name="$2"
    local service_role_arn="$3"
    shift 3

    p6_run_write_cmd aws deploy create-deployment-group --application-name $application_name --deployment-group-name $deployment_group_name --service-role-arn $service_role_arn "$@"
}