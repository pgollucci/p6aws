######################################################################
#<
#
# Function:
#	p6_aws_personalize_campaign_update(campaign_arn)
#
#  Args:
#	campaign_arn - 
#
#>
######################################################################
p6_aws_personalize_campaign_update() {
    local campaign_arn="$1"
    shift 1

    p6_run_write_cmd aws personalize update-campaign --campaign-arn $campaign_arn "$@"
}