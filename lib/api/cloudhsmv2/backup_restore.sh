p6_aws_cloudhsmv2_backup_restore() {
    local backup_id="$1"
    shift 1

    p6_run_write_cmd aws cloudhsmv2 restore-backup --backup-id $backup_id "$@"
}
