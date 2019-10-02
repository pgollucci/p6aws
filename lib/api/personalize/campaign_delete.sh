######################################################################
#<
#
# Function:
#	p6_aws_personalize_campaign_delete(campaign_arn)
#
#  Args:
#	campaign_arn - 
#
#>
######################################################################
p6_aws_personalize_campaign_delete() {
    local campaign_arn="$1"
    shift 1

    p6_run_write_cmd aws personalize delete-campaign --campaign-arn $campaign_arn "$@"
}