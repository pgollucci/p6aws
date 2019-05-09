p6_aws_mgh_migration_task_describe() {
    local progress_update_stream="$1"
    local migration_task_name="$2"
    shift 2

    p6_run_read_cmd aws mgh describe-migration-task --progress-update-stream $progress_update_stream --migration-task-name $migration_task_name "$@"
}
