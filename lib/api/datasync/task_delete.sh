######################################################################
#<
#
# Function:
#      = p6_aws_datasync_task_delete(task_arn)
#
# Arg(s):
#    task_arn - 
#
#
#>
######################################################################
p6_aws_datasync_task_delete() {
    local task_arn="$1"
    shift 1

    p6_run_write_cmd aws datasync delete-task --task-arn $task_arn "$@"
}