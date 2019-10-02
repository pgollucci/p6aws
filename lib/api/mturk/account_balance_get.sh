######################################################################
#<
#
# Function:
#	p6_aws_mturk_account_balance_get()
#
#>
######################################################################
p6_aws_mturk_account_balance_get() {

    p6_run_read_cmd aws mturk get-account-balance "$@"
}