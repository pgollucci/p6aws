p6_aws_cloudhsmv2_backup_delete() {
    local backup_id="$1"
    shift 1

    p6_run_write_cmd aws cloudhsmv2 delete-backup --backup-id $backup_id "$@"
}
