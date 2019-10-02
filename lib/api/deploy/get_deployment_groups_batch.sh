######################################################################
#<
#
# Function:
#	p6_aws_deploy_get_deployment_groups_batch(application_name, deployment_group_names)
#
#  Args:
#	application_name - 
#	deployment_group_names - 
#
#>
######################################################################
p6_aws_deploy_get_deployment_groups_batch() {
    local application_name="$1"
    local deployment_group_names="$2"
    shift 2

    p6_run_read_cmd aws deploy batch-get-deployment-groups --application-name $application_name --deployment-group-names $deployment_group_names "$@"
}