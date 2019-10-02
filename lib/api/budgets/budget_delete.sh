######################################################################
#<
#
# Function:
#	p6_aws_budgets_budget_delete(account_id, budget_name)
#
#  Args:
#	account_id - 
#	budget_name - 
#
#>
######################################################################
p6_aws_budgets_budget_delete() {
    local account_id="$1"
    local budget_name="$2"
    shift 2

    p6_run_read_cmd aws budgets delete-budget --account-id $account_id --budget-name $budget_name "$@"
}