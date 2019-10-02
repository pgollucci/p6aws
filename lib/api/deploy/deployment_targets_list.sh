######################################################################
#<
#
# Function:
#	p6_aws_deploy_deployment_targets_list()
#
#>
######################################################################
p6_aws_deploy_deployment_targets_list() {

    p6_run_read_cmd aws deploy list-deployment-targets "$@"
}