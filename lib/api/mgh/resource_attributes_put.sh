p6_aws_mgh_resource_attributes_put() {
    local progress_update_stream="$1"
    local migration_task_name="$2"
    local resource_attribute_list="$3"
    shift 3

    p6_log_or_run aws mgh put-resource-attributes --progress-update-stream $progress_update_stream --migration-task-name $migration_task_name --resource-attribute-list $resource_attribute_list "$@"
}
