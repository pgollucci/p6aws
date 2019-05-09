p6_aws_backup_backup_selection_delete() {
    local backup_plan_id="$1"
    local selection_id="$2"
    shift 2

    p6_run_write_cmd aws backup delete-backup-selection --backup-plan-id $backup_plan_id --selection-id $selection_id "$@"
}
