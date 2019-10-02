######################################################################
#<
#
# Function:
#	p6_aws_apigatewayv2_integration_create(api_id, integration_type)
#
#  Args:
#	api_id - 
#	integration_type - 
#
#>
######################################################################
p6_aws_apigatewayv2_integration_create() {
    local api_id="$1"
    local integration_type="$2"
    shift 2

    p6_run_write_cmd aws apigatewayv2 create-integration --api-id $api_id --integration-type $integration_type "$@"
}