p6_aws_backup_backup_plan_versions_list() {
    local backup_plan_id="$1"
    shift 1

    p6_run_read_cmd aws backup list-backup-plan-versions --backup-plan-id $backup_plan_id "$@"
}
