######################################################################
#<
#
# Function:
#	p6_aws_apigateway_authorizer_delete(rest_api_id, authorizer_id)
#
#  Args:
#	rest_api_id - 
#	authorizer_id - 
#
#>
######################################################################
p6_aws_apigateway_authorizer_delete() {
    local rest_api_id="$1"
    local authorizer_id="$2"
    shift 2

    p6_run_write_cmd aws apigateway delete-authorizer --rest-api-id $rest_api_id --authorizer-id $authorizer_id "$@"
}