######################################################################
#<
#
# Function:
#	p6_aws_organizations_account_to_organization_invite(target)
#
#  Args:
#	target - 
#
#>
######################################################################
p6_aws_organizations_account_to_organization_invite() {
    local target="$1"
    shift 1

    p6_run_write_cmd aws organizations invite-account-to-organization --target $target "$@"
}