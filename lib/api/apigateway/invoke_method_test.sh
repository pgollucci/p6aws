######################################################################
#<
#
# Function:
#	p6_aws_apigateway_invoke_method_test(rest_api_id, resource_id, http_method)
#
#  Args:
#	rest_api_id - 
#	resource_id - 
#	http_method - 
#
#>
######################################################################
p6_aws_apigateway_invoke_method_test() {
    local rest_api_id="$1"
    local resource_id="$2"
    local http_method="$3"
    shift 3

    p6_run_write_cmd aws apigateway test-invoke-method --rest-api-id $rest_api_id --resource-id $resource_id --http-method $http_method "$@"
}