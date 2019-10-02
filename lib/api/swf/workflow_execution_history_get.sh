######################################################################
#<
#
# Function:
#	p6_aws_swf_workflow_execution_history_get(domain, execution)
#
#  Args:
#	domain - 
#	execution - 
#
#>
######################################################################
p6_aws_swf_workflow_execution_history_get() {
    local domain="$1"
    local execution="$2"
    shift 2

    p6_run_read_cmd aws swf get-workflow-execution-history --domain $domain --execution $execution "$@"
}