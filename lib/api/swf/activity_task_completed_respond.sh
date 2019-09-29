######################################################################
#<
#
# Function:
#      = p6_aws_swf_activity_task_completed_respond(task_token)
#
# Arg(s):
#    task_token - 
#
#
#>
######################################################################
p6_aws_swf_activity_task_completed_respond() {
    local task_token="$1"
    shift 1

    p6_run_write_cmd aws swf respond-activity-task-completed --task-token $task_token "$@"
}