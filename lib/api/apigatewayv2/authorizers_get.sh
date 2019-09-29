######################################################################
#<
#
# Function:
#      = p6_aws_apigatewayv2_authorizers_get(api_id)
#
# Arg(s):
#    api_id - 
#
#
#>
######################################################################
p6_aws_apigatewayv2_authorizers_get() {
    local api_id="$1"
    shift 1

    p6_run_read_cmd aws apigatewayv2 get-authorizers --api-id $api_id "$@"
}