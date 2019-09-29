######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_campaign_get(application_id, campaign_id)
#
# Arg(s):
#    application_id - 
#    campaign_id - 
#
#
#>
######################################################################
p6_aws_pinpoint_campaign_get() {
    local application_id="$1"
    local campaign_id="$2"
    shift 2

    p6_run_read_cmd aws pinpoint get-campaign --application-id $application_id --campaign-id $campaign_id "$@"
}