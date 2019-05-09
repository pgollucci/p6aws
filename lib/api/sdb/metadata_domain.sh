p6_aws_sdb_metadata_domain() {
    local domain_name="$1"
    shift 1

    p6_log_or_run aws sdb domain-metadata --domain-name $domain_name "$@"
}
