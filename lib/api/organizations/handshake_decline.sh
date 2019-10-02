######################################################################
#<
#
# Function:
#	p6_aws_organizations_handshake_decline(handshake_id)
#
#  Args:
#	handshake_id - 
#
#>
######################################################################
p6_aws_organizations_handshake_decline() {
    local handshake_id="$1"
    shift 1

    p6_run_write_cmd aws organizations decline-handshake --handshake-id $handshake_id "$@"
}