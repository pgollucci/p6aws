######################################################################
#<
#
# Function:
#	p6_aws_mgh_migration_task_import(progress_update_stream, migration_task_name)
#
#  Args:
#	progress_update_stream - 
#	migration_task_name - 
#
#>
######################################################################
p6_aws_mgh_migration_task_import() {
    local progress_update_stream="$1"
    local migration_task_name="$2"
    shift 2

    p6_run_write_cmd aws mgh import-migration-task --progress-update-stream $progress_update_stream --migration-task-name $migration_task_name "$@"
}