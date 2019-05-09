p6_aws_pinpoint_campaign_activities_get() {
    local application_id="$1"
    local campaign_id="$2"
    shift 2

    p6_run_read_cmd aws pinpoint get-campaign-activities --application-id $application_id --campaign-id $campaign_id "$@"
}
