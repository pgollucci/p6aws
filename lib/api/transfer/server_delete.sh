p6_aws_transfer_server_delete() {
    local server_id="$1"
    shift 1

    p6_log_or_run aws transfer delete-server --server-id $server_id "$@"
}
