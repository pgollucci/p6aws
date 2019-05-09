p6_aws_opsworks_cm_maintenance_start() {
    local server_name="$1"
    shift 1

    p6_log_or_run aws opsworks-cm start-maintenance --server-name $server_name "$@"
}
