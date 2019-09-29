######################################################################
#<
#
# Function:
#      = p6_aws_budgets_subscriber_delete(account_id, budget_name, notification, subscriber)
#
# Arg(s):
#    account_id - 
#    budget_name - 
#    notification - 
#    subscriber - 
#
#
#>
######################################################################
p6_aws_budgets_subscriber_delete() {
    local account_id="$1"
    local budget_name="$2"
    local notification="$3"
    local subscriber="$4"
    shift 4

    p6_run_write_cmd aws budgets delete-subscriber --account-id $account_id --budget-name $budget_name --notification $notification --subscriber $subscriber "$@"
}