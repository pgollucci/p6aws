p6_aws_mgh_created_artifact_associate() {
    local progress_update_stream="$1"
    local migration_task_name="$2"
    local created_artifact="$3"
    shift 3

    p6_run_write_cmd aws mgh associate-created-artifact --progress-update-stream $progress_update_stream --migration-task-name $migration_task_name --created-artifact $created_artifact "$@"
}
