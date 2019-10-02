######################################################################
#<
#
# Function:
#	p6_aws_apigateway_method_put(rest_api_id, resource_id, http_method, authorization_type)
#
#  Args:
#	rest_api_id - 
#	resource_id - 
#	http_method - 
#	authorization_type - 
#
#>
######################################################################
p6_aws_apigateway_method_put() {
    local rest_api_id="$1"
    local resource_id="$2"
    local http_method="$3"
    local authorization_type="$4"
    shift 4

    p6_run_write_cmd aws apigateway put-method --rest-api-id $rest_api_id --resource-id $resource_id --http-method $http_method --authorization-type $authorization_type "$@"
}