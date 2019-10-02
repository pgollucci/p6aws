######################################################################
#<
#
# Function:
#	p6_aws_neptune_source_identifier_to_subscription_add(subscription_name, source_identifier)
#
#  Args:
#	subscription_name - 
#	source_identifier - 
#
#>
######################################################################
p6_aws_neptune_source_identifier_to_subscription_add() {
    local subscription_name="$1"
    local source_identifier="$2"
    shift 2

    p6_run_write_cmd aws neptune add-source-identifier-to-subscription --subscription-name $subscription_name --source-identifier $source_identifier "$@"
}