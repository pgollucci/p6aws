p6_aws_swf_closed_workflow_executions_list() {
    local domain="$1"
    shift 1

    p6_log_and_run aws swf list-closed-workflow-executions --domain $domain "$@"
}
