p6_aws_apigatewayv2_api_mappings_get() {
    local domain_name="$1"
    shift 1

    p6_run_read_cmd aws apigatewayv2 get-api-mappings --domain-name $domain_name "$@"
}
