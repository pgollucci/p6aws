p6_aws_cloudsearch_domain_delete() {
    local domain_name="$1"
    shift 1

    p6_run_write_cmd aws cloudsearch delete-domain --domain-name $domain_name "$@"
}
