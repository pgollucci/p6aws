######################################################################
#<
#
# Function:
#      = p6_aws_apigatewayv2_authorizer_delete(api_id, authorizer_id)
#
# Arg(s):
#    api_id - 
#    authorizer_id - 
#
#
#>
######################################################################
p6_aws_apigatewayv2_authorizer_delete() {
    local api_id="$1"
    local authorizer_id="$2"
    shift 2

    p6_run_write_cmd aws apigatewayv2 delete-authorizer --api-id $api_id --authorizer-id $authorizer_id "$@"
}