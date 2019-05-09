p6_aws_transfer_servers_list() {

    p6_run_read_cmd aws transfer list-servers "$@"
}
