######################################################################
#<
#
# Function:
#      = p6_aws_apigatewayv2_stages_get(api_id)
#
# Arg(s):
#    api_id - 
#
#
#>
######################################################################
p6_aws_apigatewayv2_stages_get() {
    local api_id="$1"
    shift 1

    p6_run_read_cmd aws apigatewayv2 get-stages --api-id $api_id "$@"
}