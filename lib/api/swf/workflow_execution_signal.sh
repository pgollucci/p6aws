p6_aws_swf_workflow_execution_signal() {
    local domain="$1"
    local workflow_id="$2"
    local signal_name="$3"
    shift 3

    p6_log_or_run aws swf signal-workflow-execution --domain $domain --workflow-id $workflow_id --signal-name $signal_name "$@"
}
