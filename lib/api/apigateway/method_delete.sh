######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_method_delete(rest_api_id, resource_id, http_method)
#
# Arg(s):
#    rest_api_id - 
#    resource_id - 
#    http_method - 
#
#
#>
######################################################################
p6_aws_apigateway_method_delete() {
    local rest_api_id="$1"
    local resource_id="$2"
    local http_method="$3"
    shift 3

    p6_run_write_cmd aws apigateway delete-method --rest-api-id $rest_api_id --resource-id $resource_id --http-method $http_method "$@"
}