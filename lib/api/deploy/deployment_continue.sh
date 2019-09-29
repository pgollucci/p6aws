######################################################################
#<
#
# Function:
#      = p6_aws_deploy_deployment_continue()
#
#
#
#>
######################################################################
p6_aws_deploy_deployment_continue() {

    p6_run_write_cmd aws deploy continue-deployment "$@"
}