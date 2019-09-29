######################################################################
#<
#
# Function:
#      = p6_aws_mgh_migration_task_state_notify(progress_update_stream, migration_task_name, task, update_date_time, next_update_seconds)
#
# Arg(s):
#    progress_update_stream - 
#    migration_task_name - 
#    task - 
#    update_date_time - 
#    next_update_seconds - 
#
#
#>
######################################################################
p6_aws_mgh_migration_task_state_notify() {
    local progress_update_stream="$1"
    local migration_task_name="$2"
    local task="$3"
    local update_date_time="$4"
    local next_update_seconds="$5"
    shift 5

    p6_run_write_cmd aws mgh notify-migration-task-state --progress-update-stream $progress_update_stream --migration-task-name $migration_task_name --task $task --update-date-time $update_date_time --next-update-seconds $next_update_seconds "$@"
}