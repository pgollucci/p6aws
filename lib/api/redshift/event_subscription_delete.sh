######################################################################
#<
#
# Function:
#	p6_aws_redshift_event_subscription_delete(subscription_name)
#
#  Args:
#	subscription_name - 
#
#>
######################################################################
p6_aws_redshift_event_subscription_delete() {
    local subscription_name="$1"
    shift 1

    p6_run_write_cmd aws redshift delete-event-subscription --subscription-name $subscription_name "$@"
}