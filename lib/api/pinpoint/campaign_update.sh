p6_aws_pinpoint_campaign_update() {
    local application_id="$1"
    local campaign_id="$2"
    local write_campaign_request="$3"
    shift 3

    p6_run_write_cmd aws pinpoint update-campaign --application-id $application_id --campaign-id $campaign_id --write-campaign-request $write_campaign_request "$@"
}
