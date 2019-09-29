######################################################################
#<
#
# Function:
#      = p6_aws_neptune_event_subscription_modify(subscription_name)
#
# Arg(s):
#    subscription_name - 
#
#
#>
######################################################################
p6_aws_neptune_event_subscription_modify() {
    local subscription_name="$1"
    shift 1

    p6_run_write_cmd aws neptune modify-event-subscription --subscription-name $subscription_name "$@"
}