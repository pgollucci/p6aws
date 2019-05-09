p6_aws_apigateway_domain_name_delete() {
    local domain_name="$1"
    shift 1

    p6_run_write_cmd aws apigateway delete-domain-name --domain-name $domain_name "$@"
}
