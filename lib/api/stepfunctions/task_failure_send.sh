######################################################################
#<
#
# Function:
#      = p6_aws_stepfunctions_task_failure_send(task_token)
#
# Arg(s):
#    task_token - 
#
#
#>
######################################################################
p6_aws_stepfunctions_task_failure_send() {
    local task_token="$1"
    shift 1

    p6_run_write_cmd aws stepfunctions send-task-failure --task-token $task_token "$@"
}