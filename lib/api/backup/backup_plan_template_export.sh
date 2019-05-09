p6_aws_backup_backup_plan_template_export() {
    local backup_plan_id="$1"
    shift 1

    p6_run_write_cmd aws backup export-backup-plan-template --backup-plan-id $backup_plan_id "$@"
}
