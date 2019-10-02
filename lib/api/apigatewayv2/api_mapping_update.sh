######################################################################
#<
#
# Function:
#	p6_aws_apigatewayv2_api_mapping_update(api_id, api_mapping_id, domain_name)
#
#  Args:
#	api_id - 
#	api_mapping_id - 
#	domain_name - 
#
#>
######################################################################
p6_aws_apigatewayv2_api_mapping_update() {
    local api_id="$1"
    local api_mapping_id="$2"
    local domain_name="$3"
    shift 3

    p6_run_write_cmd aws apigatewayv2 update-api-mapping --api-id $api_id --api-mapping-id $api_mapping_id --domain-name $domain_name "$@"
}