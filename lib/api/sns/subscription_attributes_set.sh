######################################################################
#<
#
# Function:
#	p6_aws_sns_subscription_attributes_set(subscription_arn, attribute_name)
#
#  Args:
#	subscription_arn - 
#	attribute_name - 
#
#>
######################################################################
p6_aws_sns_subscription_attributes_set() {
    local subscription_arn="$1"
    local attribute_name="$2"
    shift 2

    p6_run_write_cmd aws sns set-subscription-attributes --subscription-arn $subscription_arn --attribute-name $attribute_name "$@"
}