p6_aws_pinpoint_campaigns_get() {
    local application_id="$1"
    shift 1

    p6_run_read_cmd aws pinpoint get-campaigns --application-id $application_id "$@"
}
