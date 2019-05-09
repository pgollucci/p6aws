p6_aws_swf_closed_workflow_executions_list() {
    local domain="$1"
    shift 1

    p6_run_read_cmd aws swf list-closed-workflow-executions --domain $domain "$@"
}
