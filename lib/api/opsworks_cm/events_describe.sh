p6_aws_opsworks_cm_events_describe() {
    local server_name="$1"
    shift 1

    p6_run_read_cmd aws opsworks-cm describe-events --server-name $server_name "$@"
}
