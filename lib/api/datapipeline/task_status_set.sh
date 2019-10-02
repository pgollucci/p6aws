######################################################################
#<
#
# Function:
#	p6_aws_datapipeline_task_status_set(task_id, task_status)
#
#  Args:
#	task_id - 
#	task_status - 
#
#>
######################################################################
p6_aws_datapipeline_task_status_set() {
    local task_id="$1"
    local task_status="$2"
    shift 2

    p6_run_write_cmd aws datapipeline set-task-status --task-id $task_id --task-status $task_status "$@"
}