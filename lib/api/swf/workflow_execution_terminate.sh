p6_aws_swf_workflow_execution_terminate() {
    local domain="$1"
    local workflow_id="$2"
    shift 2

    p6_log_or_run aws swf terminate-workflow-execution --domain $domain --workflow-id $workflow_id "$@"
}
