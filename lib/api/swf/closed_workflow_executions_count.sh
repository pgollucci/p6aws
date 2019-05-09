p6_aws_swf_closed_workflow_executions_count() {
    local domain="$1"
    shift 1

    p6_log_or_run aws swf count-closed-workflow-executions --domain $domain "$@"
}
