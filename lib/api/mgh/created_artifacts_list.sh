######################################################################
#<
#
# Function:
#      = p6_aws_mgh_created_artifacts_list(progress_update_stream, migration_task_name)
#
# Arg(s):
#    progress_update_stream - 
#    migration_task_name - 
#
#
#>
######################################################################
p6_aws_mgh_created_artifacts_list() {
    local progress_update_stream="$1"
    local migration_task_name="$2"
    shift 2

    p6_run_read_cmd aws mgh list-created-artifacts --progress-update-stream $progress_update_stream --migration-task-name $migration_task_name "$@"
}