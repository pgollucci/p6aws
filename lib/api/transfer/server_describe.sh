p6_aws_transfer_server_describe() {
    local server_id="$1"
    shift 1

    p6_log_and_run aws transfer describe-server --server-id $server_id "$@"
}
