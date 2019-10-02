######################################################################
#<
#
# Function:
#	p6_aws_apigatewayv2_deployment_delete(api_id, deployment_id)
#
#  Args:
#	api_id - 
#	deployment_id - 
#
#>
######################################################################
p6_aws_apigatewayv2_deployment_delete() {
    local api_id="$1"
    local deployment_id="$2"
    shift 2

    p6_run_write_cmd aws apigatewayv2 delete-deployment --api-id $api_id --deployment-id $deployment_id "$@"
}