######################################################################
#<
#
# Function:
#	p6_aws_apigateway_resource_update(rest_api_id, resource_id)
#
#  Args:
#	rest_api_id - 
#	resource_id - 
#
#>
######################################################################
p6_aws_apigateway_resource_update() {
    local rest_api_id="$1"
    local resource_id="$2"
    shift 2

    p6_run_write_cmd aws apigateway update-resource --rest-api-id $rest_api_id --resource-id $resource_id "$@"
}