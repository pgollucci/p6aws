######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_resources_get(rest_api_id)
#
# Arg(s):
#    rest_api_id - 
#
#
#>
######################################################################
p6_aws_apigateway_resources_get() {
    local rest_api_id="$1"
    shift 1

    p6_run_read_cmd aws apigateway get-resources --rest-api-id $rest_api_id "$@"
}