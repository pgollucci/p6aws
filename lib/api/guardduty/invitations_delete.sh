######################################################################
#<
#
# Function:
#	p6_aws_guardduty_invitations_delete(account_ids)
#
#  Args:
#	account_ids - 
#
#>
######################################################################
p6_aws_guardduty_invitations_delete() {
    local account_ids="$1"
    shift 1

    p6_run_write_cmd aws guardduty delete-invitations --account-ids $account_ids "$@"
}