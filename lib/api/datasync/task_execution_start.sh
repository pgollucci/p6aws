######################################################################
#<
#
# Function:
#	p6_aws_datasync_task_execution_start(task_arn)
#
#  Args:
#	task_arn - 
#
#>
######################################################################
p6_aws_datasync_task_execution_start() {
    local task_arn="$1"
    shift 1

    p6_run_write_cmd aws datasync start-task-execution --task-arn $task_arn "$@"
}