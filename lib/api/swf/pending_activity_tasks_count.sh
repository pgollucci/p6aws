######################################################################
#<
#
# Function:
#      = p6_aws_swf_pending_activity_tasks_count(domain, task_list)
#
# Arg(s):
#    domain - 
#    task_list - 
#
#
#>
######################################################################
p6_aws_swf_pending_activity_tasks_count() {
    local domain="$1"
    local task_list="$2"
    shift 2

    p6_run_write_cmd aws swf count-pending-activity-tasks --domain $domain --task-list $task_list "$@"
}