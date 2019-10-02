######################################################################
#<
#
# Function:
#	p6_aws_organizations_handshake_describe(handshake_id)
#
#  Args:
#	handshake_id - 
#
#>
######################################################################
p6_aws_organizations_handshake_describe() {
    local handshake_id="$1"
    shift 1

    p6_run_read_cmd aws organizations describe-handshake --handshake-id $handshake_id "$@"
}