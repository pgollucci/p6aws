p6_aws_pinpoint_campaign_delete() {
    local application_id="$1"
    local campaign_id="$2"
    shift 2

    p6_log_or_run aws pinpoint delete-campaign --application-id $application_id --campaign-id $campaign_id "$@"
}
