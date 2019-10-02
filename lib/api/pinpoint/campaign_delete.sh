######################################################################
#<
#
# Function:
#	p6_aws_pinpoint_campaign_delete(application_id, campaign_id)
#
#  Args:
#	application_id - 
#	campaign_id - 
#
#>
######################################################################
p6_aws_pinpoint_campaign_delete() {
    local application_id="$1"
    local campaign_id="$2"
    shift 2

    p6_run_write_cmd aws pinpoint delete-campaign --application-id $application_id --campaign-id $campaign_id "$@"
}