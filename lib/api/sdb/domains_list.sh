p6_aws_sdb_domains_list() {

    p6_run_read_cmd aws sdb list-domains "$@"
}
