p6_aws_backup_backup_plan_update() {
    local backup_plan_id="$1"
    local backup_plan="$2"
    shift 2

    p6_run_write_cmd aws backup update-backup-plan --backup-plan-id $backup_plan_id --backup-plan $backup_plan "$@"
}
