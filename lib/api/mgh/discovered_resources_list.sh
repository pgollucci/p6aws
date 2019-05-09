p6_aws_mgh_discovered_resources_list() {
    local progress_update_stream="$1"
    local migration_task_name="$2"
    shift 2

    p6_run_read_cmd aws mgh list-discovered-resources --progress-update-stream $progress_update_stream --migration-task-name $migration_task_name "$@"
}
