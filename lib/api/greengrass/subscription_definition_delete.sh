######################################################################
#<
#
# Function:
#	p6_aws_greengrass_subscription_definition_delete(subscription_definition_id)
#
#  Args:
#	subscription_definition_id - 
#
#>
######################################################################
p6_aws_greengrass_subscription_definition_delete() {
    local subscription_definition_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass delete-subscription-definition --subscription-definition-id $subscription_definition_id "$@"
}