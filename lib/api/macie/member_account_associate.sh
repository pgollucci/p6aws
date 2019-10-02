######################################################################
#<
#
# Function:
#	p6_aws_macie_member_account_associate(member_account_id)
#
#  Args:
#	member_account_id - 
#
#>
######################################################################
p6_aws_macie_member_account_associate() {
    local member_account_id="$1"
    shift 1

    p6_run_write_cmd aws macie associate-member-account --member-account-id $member_account_id "$@"
}