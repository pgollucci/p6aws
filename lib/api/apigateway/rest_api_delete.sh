######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_rest_api_delete(rest_api_id)
#
# Arg(s):
#    rest_api_id - 
#
#
#>
######################################################################
p6_aws_apigateway_rest_api_delete() {
    local rest_api_id="$1"
    shift 1

    p6_run_write_cmd aws apigateway delete-rest-api --rest-api-id $rest_api_id "$@"
}