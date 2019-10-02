######################################################################
#<
#
# Function:
#	p6_aws_personalize_campaign_describe(campaign_arn)
#
#  Args:
#	campaign_arn - 
#
#>
######################################################################
p6_aws_personalize_campaign_describe() {
    local campaign_arn="$1"
    shift 1

    p6_run_read_cmd aws personalize describe-campaign --campaign-arn $campaign_arn "$@"
}