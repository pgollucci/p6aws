######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_base_path_mapping_create(domain_name, rest_api_id)
#
# Arg(s):
#    domain_name - 
#    rest_api_id - 
#
#
#>
######################################################################
p6_aws_apigateway_base_path_mapping_create() {
    local domain_name="$1"
    local rest_api_id="$2"
    shift 2

    p6_run_write_cmd aws apigateway create-base-path-mapping --domain-name $domain_name --rest-api-id $rest_api_id "$@"
}