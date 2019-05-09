p6_aws_opsworks_cm_server_update() {
    local server_name="$1"
    shift 1

    p6_log_or_run aws opsworks-cm update-server --server-name $server_name "$@"
}
