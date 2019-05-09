p6_aws_pinpoint_campaign_create() {
    local application_id="$1"
    local write_campaign_request="$2"
    shift 2

    p6_run_write_cmd aws pinpoint create-campaign --application-id $application_id --write-campaign-request $write_campaign_request "$@"
}
