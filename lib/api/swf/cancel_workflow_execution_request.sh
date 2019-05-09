p6_aws_swf_cancel_workflow_execution_request() {
    local domain="$1"
    local workflow_id="$2"
    shift 2

    p6_log_or_run aws swf request-cancel-workflow-execution --domain $domain --workflow-id $workflow_id "$@"
}
