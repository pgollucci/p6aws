p6_aws_apigateway_base_path_mappings_get() {
    local domain_name="$1"
    shift 1

    p6_run_read_cmd aws apigateway get-base-path-mappings --domain-name $domain_name "$@"
}
