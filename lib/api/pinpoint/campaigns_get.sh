p6_aws_pinpoint_campaigns_get() {
    local application_id="$1"
    shift 1

    p6_log_and_run aws pinpoint get-campaigns --application-id $application_id "$@"
}
