######################################################################
#<
#
# Function:
#	p6_aws_pinpoint_email_domain_deliverability_campaign_get(campaign_id)
#
#  Args:
#	campaign_id - 
#
#>
######################################################################
p6_aws_pinpoint_email_domain_deliverability_campaign_get() {
    local campaign_id="$1"
    shift 1

    p6_run_read_cmd aws pinpoint-email get-domain-deliverability-campaign --campaign-id $campaign_id "$@"
}