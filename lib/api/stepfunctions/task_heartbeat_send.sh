######################################################################
#<
#
# Function:
#	p6_aws_stepfunctions_task_heartbeat_send(task_token)
#
#  Args:
#	task_token - 
#
#>
######################################################################
p6_aws_stepfunctions_task_heartbeat_send() {
    local task_token="$1"
    shift 1

    p6_run_write_cmd aws stepfunctions send-task-heartbeat --task-token $task_token "$@"
}