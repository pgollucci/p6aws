######################################################################
#<
#
# Function:
#      = p6_aws_transfer_server_describe(server_id)
#
# Arg(s):
#    server_id - 
#
#
#>
######################################################################
p6_aws_transfer_server_describe() {
    local server_id="$1"
    shift 1

    p6_run_read_cmd aws transfer describe-server --server-id $server_id "$@"
}