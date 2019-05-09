p6_aws_directconnect_loa_describe() {
    local connection_id="$1"
    shift 1

    p6_run_read_cmd aws directconnect describe-loa --connection-id $connection_id "$@"
}
