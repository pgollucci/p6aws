######################################################################
#<
#
# Function:
#	p6_aws_workdocs_notification_subscription_delete(subscription_id, organization_id)
#
#  Args:
#	subscription_id - 
#	organization_id - 
#
#>
######################################################################
p6_aws_workdocs_notification_subscription_delete() {
    local subscription_id="$1"
    local organization_id="$2"
    shift 2

    p6_run_write_cmd aws workdocs delete-notification-subscription --subscription-id $subscription_id --organization-id $organization_id "$@"
}