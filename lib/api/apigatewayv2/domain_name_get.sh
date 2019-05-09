p6_aws_apigatewayv2_domain_name_get() {
    local domain_name="$1"
    shift 1

    p6_run_read_cmd aws apigatewayv2 get-domain-name --domain-name $domain_name "$@"
}
