######################################################################
#<
#
# Function:
#	p6_aws_swf_closed_workflow_executions_count(domain)
#
#  Args:
#	domain - 
#
#>
######################################################################
p6_aws_swf_closed_workflow_executions_count() {
    local domain="$1"
    shift 1

    p6_run_write_cmd aws swf count-closed-workflow-executions --domain $domain "$@"
}