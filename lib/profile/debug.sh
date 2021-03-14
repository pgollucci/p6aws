# shellcheck shell=bash
######################################################################
#<
#
# Function: p6_aws_profile__debug(msg)
#
#  Args:
#	msg -
#
#>
######################################################################
p6_aws_profile__debug() {
    local msg="$1"

    p6_aws__debug "profile: $msg"

    p6_return_void
}
