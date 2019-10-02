######################################################################
#<
#
# Function:
#	p6_aws_personalize_runtime_personalized_ranking_get(campaign_arn, input_list, user_id)
#
#  Args:
#	campaign_arn - 
#	input_list - 
#	user_id - 
#
#>
######################################################################
p6_aws_personalize_runtime_personalized_ranking_get() {
    local campaign_arn="$1"
    local input_list="$2"
    local user_id="$3"
    shift 3

    p6_run_read_cmd aws personalize-runtime get-personalized-ranking --campaign-arn $campaign_arn --input-list $input_list --user-id $user_id "$@"
}