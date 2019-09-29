######################################################################
#<
#
# Function:
#      = p6_aws_apigatewayv2_deployment_get(api_id, deployment_id)
#
# Arg(s):
#    api_id - 
#    deployment_id - 
#
#
#>
######################################################################
p6_aws_apigatewayv2_deployment_get() {
    local api_id="$1"
    local deployment_id="$2"
    shift 2

    p6_run_read_cmd aws apigatewayv2 get-deployment --api-id $api_id --deployment-id $deployment_id "$@"
}