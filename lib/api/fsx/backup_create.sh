p6_aws_fsx_backup_create() {
    local file_system_id="$1"
    shift 1

    p6_log_or_run aws fsx create-backup --file-system-id $file_system_id "$@"
}
