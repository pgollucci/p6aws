p6_aws_mgh_created_artifact_disassociate() {
    local progress_update_stream="$1"
    local migration_task_name="$2"
    local created_artifact_name="$3"
    shift 3

    p6_run_write_cmd aws mgh disassociate-created-artifact --progress-update-stream $progress_update_stream --migration-task-name $migration_task_name --created-artifact-name $created_artifact_name "$@"
}
