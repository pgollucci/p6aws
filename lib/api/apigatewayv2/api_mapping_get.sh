######################################################################
#<
#
# Function:
#      = p6_aws_apigatewayv2_api_mapping_get(api_mapping_id, domain_name)
#
# Arg(s):
#    api_mapping_id - 
#    domain_name - 
#
#
#>
######################################################################
p6_aws_apigatewayv2_api_mapping_get() {
    local api_mapping_id="$1"
    local domain_name="$2"
    shift 2

    p6_run_read_cmd aws apigatewayv2 get-api-mapping --api-mapping-id $api_mapping_id --domain-name $domain_name "$@"
}