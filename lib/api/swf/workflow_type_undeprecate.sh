p6_aws_swf_workflow_type_undeprecate() {
    local domain="$1"
    local workflow_type="$2"
    shift 2

    p6_run_write_cmd aws swf undeprecate-workflow-type --domain $domain --workflow-type $workflow_type "$@"
}
