######################################################################
#<
#
# Function:
#	p6_aws_apigateway_resource_get(rest_api_id, resource_id)
#
#  Args:
#	rest_api_id - 
#	resource_id - 
#
#>
######################################################################
p6_aws_apigateway_resource_get() {
    local rest_api_id="$1"
    local resource_id="$2"
    shift 2

    p6_run_read_cmd aws apigateway get-resource --rest-api-id $rest_api_id --resource-id $resource_id "$@"
}