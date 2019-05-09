p6_aws_opsworks_cm_backup_delete() {
    local backup_id="$1"
    shift 1

    p6_log_or_run aws opsworks-cm delete-backup --backup-id $backup_id "$@"
}
