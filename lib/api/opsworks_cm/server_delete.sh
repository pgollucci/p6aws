p6_aws_opsworks_cm_server_delete() {
    local server_name="$1"
    shift 1

    p6_log_or_run aws opsworks-cm delete-server --server-name $server_name "$@"
}
