p6_aws_fsx_backup_delete() {
    local backup_id="$1"
    shift 1

    p6_log_or_run aws fsx delete-backup --backup-id $backup_id "$@"
}
