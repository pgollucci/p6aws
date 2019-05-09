p6_aws_mgh_discovered_resource_disassociate() {
    local progress_update_stream="$1"
    local migration_task_name="$2"
    local configuration_id="$3"
    shift 3

    p6_log_or_run aws mgh disassociate-discovered-resource --progress-update-stream $progress_update_stream --migration-task-name $migration_task_name --configuration-id $configuration_id "$@"
}
