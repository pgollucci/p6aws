p6_aws_sdb_domain_create() {
    local domain_name="$1"
    shift 1

    p6_log_or_run aws sdb create-domain --domain-name $domain_name "$@"
}
