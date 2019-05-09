p6_aws_mgh_migration_task_import() {
    local progress_update_stream="$1"
    local migration_task_name="$2"
    shift 2

    p6_log_or_run aws mgh import-migration-task --progress-update-stream $progress_update_stream --migration-task-name $migration_task_name "$@"
}
