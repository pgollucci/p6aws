p6_aws_fsx_backup_create() {
    local file_system_id="$1"
    shift 1

    p6_run_write_cmd aws fsx create-backup --file-system-id $file_system_id "$@"
}
