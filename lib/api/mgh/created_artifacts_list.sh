p6_aws_mgh_created_artifacts_list() {
    local progress_update_stream="$1"
    local migration_task_name="$2"
    shift 2

    p6_log_and_run aws mgh list-created-artifacts --progress-update-stream $progress_update_stream --migration-task-name $migration_task_name "$@"
}
