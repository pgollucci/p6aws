######################################################################
#<
#
# Function:
#      = p6_aws_apigatewayv2_deployment_create(api_id)
#
# Arg(s):
#    api_id - 
#
#
#>
######################################################################
p6_aws_apigatewayv2_deployment_create() {
    local api_id="$1"
    shift 1

    p6_run_write_cmd aws apigatewayv2 create-deployment --api-id $api_id "$@"
}