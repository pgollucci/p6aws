p6_aws_directconnect_connection_delete() {
    local connection_id="$1"
    shift 1

    p6_run_write_cmd aws directconnect delete-connection --connection-id $connection_id "$@"
}
