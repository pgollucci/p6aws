######################################################################
#<
#
# Function:
#      = p6_aws_rds_event_subscription_delete(subscription_name)
#
# Arg(s):
#    subscription_name - 
#
#
#>
######################################################################
p6_aws_rds_event_subscription_delete() {
    local subscription_name="$1"
    shift 1

    p6_run_write_cmd aws rds delete-event-subscription --subscription-name $subscription_name "$@"
}