######################################################################
#<
#
# Function:
#	p6_aws_swf_open_workflow_executions_list(domain, start_time_filter)
#
#  Args:
#	domain - 
#	start_time_filter - 
#
#>
######################################################################
p6_aws_swf_open_workflow_executions_list() {
    local domain="$1"
    local start_time_filter="$2"
    shift 2

    p6_run_read_cmd aws swf list-open-workflow-executions --domain $domain --start-time-filter $start_time_filter "$@"
}