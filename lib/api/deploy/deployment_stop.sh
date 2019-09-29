######################################################################
#<
#
# Function:
#      = p6_aws_deploy_deployment_stop(deployment_id)
#
# Arg(s):
#    deployment_id - 
#
#
#>
######################################################################
p6_aws_deploy_deployment_stop() {
    local deployment_id="$1"
    shift 1

    p6_run_write_cmd aws deploy stop-deployment --deployment-id $deployment_id "$@"
}