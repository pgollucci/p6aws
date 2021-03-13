# shellcheck shell=bash
######################################################################
#<
#
# Function: p6_aws_cli_organization_activate(org)
#
#  Args:
#	org -
#
#>
######################################################################
p6_aws_cli_organization_activate() {
	local org="$1"

	p6_aws_cfg_reset
	p6_aws_env_org_active "$org"
	p6_aws_cli_shortcuts_activate "$org" >/dev/null

	p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_cli_organization_deactivate(org)
#
#  Args:
#	org -
#
#>
######################################################################
p6_aws_cli_organization_deactivate() {
	local org="$1"

	p6_aws_cli_shortcuts_deactivate "$org"
	p6_aws_cfg_reset
	p6_aws_env_org_active ""

	p6_return_void
}