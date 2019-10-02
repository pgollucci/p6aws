######################################################################
#<
#
# Function:
#	p6_aws_swf_activity_task_failed_respond(task_token)
#
#  Args:
#	task_token - 
#
#>
######################################################################
p6_aws_swf_activity_task_failed_respond() {
    local task_token="$1"
    shift 1

    p6_run_write_cmd aws swf respond-activity-task-failed --task-token $task_token "$@"
}