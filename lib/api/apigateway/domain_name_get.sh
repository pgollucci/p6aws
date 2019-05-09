p6_aws_apigateway_domain_name_get() {
    local domain_name="$1"
    shift 1

    p6_run_read_cmd aws apigateway get-domain-name --domain-name $domain_name "$@"
}
