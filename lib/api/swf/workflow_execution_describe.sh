p6_aws_swf_workflow_execution_describe() {
    local domain="$1"
    local execution="$2"
    shift 2

    p6_log_and_run aws swf describe-workflow-execution --domain $domain --execution $execution "$@"
}
