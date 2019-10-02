######################################################################
#<
#
# Function:
#	p6_aws_sns_subscription_attributes_get(subscription_arn)
#
#  Args:
#	subscription_arn - 
#
#>
######################################################################
p6_aws_sns_subscription_attributes_get() {
    local subscription_arn="$1"
    shift 1

    p6_run_read_cmd aws sns get-subscription-attributes --subscription-arn $subscription_arn "$@"
}