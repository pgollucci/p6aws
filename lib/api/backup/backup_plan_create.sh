p6_aws_backup_backup_plan_create() {
    local backup_plan="$1"
    shift 1

    p6_run_write_cmd aws backup create-backup-plan --backup-plan $backup_plan "$@"
}
