p6_aws_swf_workflow_type_register() {
    local domain="$1"
    local name="$2"
    local workflow_version="$3"
    shift 3

    p6_log_or_run aws swf register-workflow-type --domain $domain --name $name --workflow-version $workflow_version "$@"
}
