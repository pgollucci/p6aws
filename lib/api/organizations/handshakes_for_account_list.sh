p6_aws_organizations_handshakes_for_account_list() {

    p6_run_read_cmd aws organizations list-handshakes-for-account "$@"
}
