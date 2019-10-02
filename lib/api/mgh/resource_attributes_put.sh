######################################################################
#<
#
# Function:
#	p6_aws_mgh_resource_attributes_put(progress_update_stream, migration_task_name, resource_attribute_list)
#
#  Args:
#	progress_update_stream - 
#	migration_task_name - 
#	resource_attribute_list - 
#
#>
######################################################################
p6_aws_mgh_resource_attributes_put() {
    local progress_update_stream="$1"
    local migration_task_name="$2"
    local resource_attribute_list="$3"
    shift 3

    p6_run_write_cmd aws mgh put-resource-attributes --progress-update-stream $progress_update_stream --migration-task-name $migration_task_name --resource-attribute-list $resource_attribute_list "$@"
}