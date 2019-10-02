######################################################################
#<
#
# Function:
#	p6_aws_chime_account_get(account_id)
#
#  Args:
#	account_id - 
#
#>
######################################################################
p6_aws_chime_account_get() {
    local account_id="$1"
    shift 1

    p6_run_read_cmd aws chime get-account --account-id $account_id "$@"
}