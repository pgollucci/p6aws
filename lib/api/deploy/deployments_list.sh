######################################################################
#<
#
# Function:
#	p6_aws_deploy_deployments_list()
#
#>
######################################################################
p6_aws_deploy_deployments_list() {

    p6_run_read_cmd aws deploy list-deployments "$@"
}