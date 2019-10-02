######################################################################
#<
#
# Function:
#	p6_aws_deploy_get_deployments_batch(deployment_ids)
#
#  Args:
#	deployment_ids - 
#
#>
######################################################################
p6_aws_deploy_get_deployments_batch() {
    local deployment_ids="$1"
    shift 1

    p6_run_read_cmd aws deploy batch-get-deployments --deployment-ids $deployment_ids "$@"
}