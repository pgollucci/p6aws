######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_integration_update(rest_api_id, resource_id, http_method)
#
# Arg(s):
#    rest_api_id - 
#    resource_id - 
#    http_method - 
#
#
#>
######################################################################
p6_aws_apigateway_integration_update() {
    local rest_api_id="$1"
    local resource_id="$2"
    local http_method="$3"
    shift 3

    p6_run_write_cmd aws apigateway update-integration --rest-api-id $rest_api_id --resource-id $resource_id --http-method $http_method "$@"
}