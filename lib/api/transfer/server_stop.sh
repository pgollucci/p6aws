p6_aws_transfer_server_stop() {
    local server_id="$1"
    shift 1

    p6_log_or_run aws transfer stop-server --server-id $server_id "$@"
}
