p6_aws_cloudsearch_domain_create() {
    local domain_name="$1"
    shift 1

    p6_run_write_cmd aws cloudsearch create-domain --domain-name $domain_name "$@"
}
