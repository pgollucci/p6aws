######################################################################
#<
#
# Function:
#	p6_aws_macie_member_accounts_list()
#
#>
######################################################################
p6_aws_macie_member_accounts_list() {

    p6_run_read_cmd aws macie list-member-accounts "$@"
}