######################################################################
#<
#
# Function:
#      = p6_aws_deploy_deployment_target_get()
#
#
#
#>
######################################################################
p6_aws_deploy_deployment_target_get() {

    p6_run_read_cmd aws deploy get-deployment-target "$@"
}