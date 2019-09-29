######################################################################
#<
#
# Function:
#      = p6_aws_swf_for_activity_task_poll(domain, task_list)
#
# Arg(s):
#    domain - 
#    task_list - 
#
#
#>
######################################################################
p6_aws_swf_for_activity_task_poll() {
    local domain="$1"
    local task_list="$2"
    shift 2

    p6_run_write_cmd aws swf poll-for-activity-task --domain $domain --task-list $task_list "$@"
}