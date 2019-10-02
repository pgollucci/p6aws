######################################################################
#<
#
# Function:
#	p6_aws_datasync_task_update(task_arn)
#
#  Args:
#	task_arn - 
#
#>
######################################################################
p6_aws_datasync_task_update() {
    local task_arn="$1"
    shift 1

    p6_run_write_cmd aws datasync update-task --task-arn $task_arn "$@"
}