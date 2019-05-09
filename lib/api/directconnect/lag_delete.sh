p6_aws_directconnect_lag_delete() {
    local lag_id="$1"
    shift 1

    p6_run_write_cmd aws directconnect delete-lag --lag-id $lag_id "$@"
}
