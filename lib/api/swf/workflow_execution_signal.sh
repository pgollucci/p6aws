######################################################################
#<
#
# Function:
#      = p6_aws_swf_workflow_execution_signal(domain, workflow_id, signal_name)
#
# Arg(s):
#    domain - 
#    workflow_id - 
#    signal_name - 
#
#
#>
######################################################################
p6_aws_swf_workflow_execution_signal() {
    local domain="$1"
    local workflow_id="$2"
    local signal_name="$3"
    shift 3

    p6_run_write_cmd aws swf signal-workflow-execution --domain $domain --workflow-id $workflow_id --signal-name $signal_name "$@"
}