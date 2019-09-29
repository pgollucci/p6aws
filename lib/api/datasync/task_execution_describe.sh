######################################################################
#<
#
# Function:
#      = p6_aws_datasync_task_execution_describe(task_execution_arn)
#
# Arg(s):
#    task_execution_arn - 
#
#
#>
######################################################################
p6_aws_datasync_task_execution_describe() {
    local task_execution_arn="$1"
    shift 1

    p6_run_read_cmd aws datasync describe-task-execution --task-execution-arn $task_execution_arn "$@"
}