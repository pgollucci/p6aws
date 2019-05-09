p6_aws_opsworks_cm_backup_create() {
    local server_name="$1"
    shift 1

    p6_run_write_cmd aws opsworks-cm create-backup --server-name $server_name "$@"
}
