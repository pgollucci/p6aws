######################################################################
#<
#
# Function:
#	p6_aws_neptune_source_identifier_from_subscription_remove(subscription_name, source_identifier)
#
#  Args:
#	subscription_name - 
#	source_identifier - 
#
#>
######################################################################
p6_aws_neptune_source_identifier_from_subscription_remove() {
    local subscription_name="$1"
    local source_identifier="$2"
    shift 2

    p6_run_write_cmd aws neptune remove-source-identifier-from-subscription --subscription-name $subscription_name --source-identifier $source_identifier "$@"
}