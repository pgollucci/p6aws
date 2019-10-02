######################################################################
#<
#
# Function:
#	p6_aws_apigatewayv2_api_mapping_delete(api_mapping_id, domain_name)
#
#  Args:
#	api_mapping_id - 
#	domain_name - 
#
#>
######################################################################
p6_aws_apigatewayv2_api_mapping_delete() {
    local api_mapping_id="$1"
    local domain_name="$2"
    shift 2

    p6_run_write_cmd aws apigatewayv2 delete-api-mapping --api-mapping-id $api_mapping_id --domain-name $domain_name "$@"
}