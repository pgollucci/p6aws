######################################################################
#<
#
# Function: p6_aws_cfg__debug(msg)
#
#  Args:
#	msg -
#
#>
######################################################################
p6_aws_cfg__debug() {
    local msg="$1"

    p6_aws__debug "cfg: $msg"

    p6_return_void
}