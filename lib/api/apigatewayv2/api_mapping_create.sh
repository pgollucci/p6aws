######################################################################
#<
#
# Function:
#	p6_aws_apigatewayv2_api_mapping_create(api_id, domain_name, stage)
#
#  Args:
#	api_id - 
#	domain_name - 
#	stage - 
#
#>
######################################################################
p6_aws_apigatewayv2_api_mapping_create() {
    local api_id="$1"
    local domain_name="$2"
    local stage="$3"
    shift 3

    p6_run_write_cmd aws apigatewayv2 create-api-mapping --api-id $api_id --domain-name $domain_name --stage $stage "$@"
}