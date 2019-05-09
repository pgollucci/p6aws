p6_aws_sdb_metadata_domain() {
    local domain_name="$1"
    shift 1

    p6_run_write_cmd aws sdb domain-metadata --domain-name $domain_name "$@"
}
