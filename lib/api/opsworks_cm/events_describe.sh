p6_aws_opsworks_cm_events_describe() {
    local server_name="$1"
    shift 1

    p6_log_and_run aws opsworks-cm describe-events --server-name $server_name "$@"
}
