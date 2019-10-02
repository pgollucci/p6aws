######################################################################
#<
#
# Function:
#	p6_aws_greengrass_subscription_definition_versions_list(subscription_definition_id)
#
#  Args:
#	subscription_definition_id - 
#
#>
######################################################################
p6_aws_greengrass_subscription_definition_versions_list() {
    local subscription_definition_id="$1"
    shift 1

    p6_run_read_cmd aws greengrass list-subscription-definition-versions --subscription-definition-id $subscription_definition_id "$@"
}