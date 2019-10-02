######################################################################
#<
#
# Function:
#	p6_aws_swf_for_decision_task_poll(domain, task_list)
#
#  Args:
#	domain - 
#	task_list - 
#
#>
######################################################################
p6_aws_swf_for_decision_task_poll() {
    local domain="$1"
    local task_list="$2"
    shift 2

    p6_run_write_cmd aws swf poll-for-decision-task --domain $domain --task-list $task_list "$@"
}