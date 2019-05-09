p6_aws_backup_backup_plan_delete() {
    local backup_plan_id="$1"
    shift 1

    p6_run_write_cmd aws backup delete-backup-plan --backup-plan-id $backup_plan_id "$@"
}
