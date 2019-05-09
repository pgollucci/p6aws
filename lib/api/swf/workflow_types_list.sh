p6_aws_swf_workflow_types_list() {
    local domain="$1"
    local registration_status="$2"
    shift 2

    p6_run_read_cmd aws swf list-workflow-types --domain $domain --registration-status $registration_status "$@"
}
