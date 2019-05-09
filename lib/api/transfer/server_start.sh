p6_aws_transfer_server_start() {
    local server_id="$1"
    shift 1

    p6_log_or_run aws transfer start-server --server-id $server_id "$@"
}
