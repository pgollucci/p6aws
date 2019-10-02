######################################################################
#<
#
# Function:
#	p6_aws_macie_member_account_disassociate(member_account_id)
#
#  Args:
#	member_account_id - 
#
#>
######################################################################
p6_aws_macie_member_account_disassociate() {
    local member_account_id="$1"
    shift 1

    p6_run_write_cmd aws macie disassociate-member-account --member-account-id $member_account_id "$@"
}