p6_aws_transfer_users_list() {
    local server_id="$1"
    shift 1

    p6_log_and_run aws transfer list-users --server-id $server_id "$@"
}
