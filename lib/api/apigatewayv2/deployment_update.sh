######################################################################
#<
#
# Function:
#	p6_aws_apigatewayv2_deployment_update(api_id, deployment_id)
#
#  Args:
#	api_id - 
#	deployment_id - 
#
#>
######################################################################
p6_aws_apigatewayv2_deployment_update() {
    local api_id="$1"
    local deployment_id="$2"
    shift 2

    p6_run_write_cmd aws apigatewayv2 update-deployment --api-id $api_id --deployment-id $deployment_id "$@"
}