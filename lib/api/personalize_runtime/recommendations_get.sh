######################################################################
#<
#
# Function:
#	p6_aws_personalize_runtime_recommendations_get(campaign_arn)
#
#  Args:
#	campaign_arn - 
#
#>
######################################################################
p6_aws_personalize_runtime_recommendations_get() {
    local campaign_arn="$1"
    shift 1

    p6_run_read_cmd aws personalize-runtime get-recommendations --campaign-arn $campaign_arn "$@"
}