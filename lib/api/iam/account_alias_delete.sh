######################################################################
#<
#
# Function:
#	p6_aws_iam_account_alias_delete(account_alias)
#
#  Args:
#	account_alias - 
#
#>
######################################################################
p6_aws_iam_account_alias_delete() {
    local account_alias="$1"
    shift 1

    p6_run_write_cmd aws iam delete-account-alias --account-alias $account_alias "$@"
}