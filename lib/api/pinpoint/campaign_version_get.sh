######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_campaign_version_get(application_id, campaign_id, campaign_version)
#
# Arg(s):
#    application_id - 
#    campaign_id - 
#    campaign_version - 
#
#
#>
######################################################################
p6_aws_pinpoint_campaign_version_get() {
    local application_id="$1"
    local campaign_id="$2"
    local campaign_version="$3"
    shift 3

    p6_run_read_cmd aws pinpoint get-campaign-version --application-id $application_id --campaign-id $campaign_id --campaign-version $campaign_version "$@"
}