######################################################################
#<
#
# Function:
#      = p6_aws_organizations_handshake_accept(handshake_id)
#
# Arg(s):
#    handshake_id - 
#
#
#>
######################################################################
p6_aws_organizations_handshake_accept() {
    local handshake_id="$1"
    shift 1

    p6_run_write_cmd aws organizations accept-handshake --handshake-id $handshake_id "$@"
}