p6_aws_sdb_domain_create() {
    local domain_name="$1"
    shift 1

    p6_run_write_cmd aws sdb create-domain --domain-name $domain_name "$@"
}
