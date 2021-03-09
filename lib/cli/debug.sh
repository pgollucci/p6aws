# shellcheck shell=bash
######################################################################
#<
#
# Function: p6_aws_cli__debug(msg)
#
#  Args:
#	msg -
#
#>
######################################################################
p6_aws_cli__debug() {
	local msg="$1"

	p6_aws__debug "cli: $msg"

	p6_return_void
}