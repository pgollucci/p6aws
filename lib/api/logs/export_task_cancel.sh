######################################################################
#<
#
# Function:
#      = p6_aws_logs_export_task_cancel(task_id)
#
# Arg(s):
#    task_id - 
#
#
#>
######################################################################
p6_aws_logs_export_task_cancel() {
    local task_id="$1"
    shift 1

    p6_run_write_cmd aws logs cancel-export-task --task-id $task_id "$@"
}