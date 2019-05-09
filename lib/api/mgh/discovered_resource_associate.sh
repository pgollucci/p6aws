p6_aws_mgh_discovered_resource_associate() {
    local progress_update_stream="$1"
    local migration_task_name="$2"
    local discovered_resource="$3"
    shift 3

    p6_log_or_run aws mgh associate-discovered-resource --progress-update-stream $progress_update_stream --migration-task-name $migration_task_name --discovered-resource $discovered_resource "$@"
}
