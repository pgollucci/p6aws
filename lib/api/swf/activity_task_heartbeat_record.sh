######################################################################
#<
#
# Function:
#      = p6_aws_swf_activity_task_heartbeat_record(task_token)
#
# Arg(s):
#    task_token - 
#
#
#>
######################################################################
p6_aws_swf_activity_task_heartbeat_record() {
    local task_token="$1"
    shift 1

    p6_run_write_cmd aws swf record-activity-task-heartbeat --task-token $task_token "$@"
}