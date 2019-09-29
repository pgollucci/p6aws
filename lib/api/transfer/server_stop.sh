######################################################################
#<
#
# Function:
#      = p6_aws_transfer_server_stop(server_id)
#
# Arg(s):
#    server_id - 
#
#
#>
######################################################################
p6_aws_transfer_server_stop() {
    local server_id="$1"
    shift 1

    p6_run_write_cmd aws transfer stop-server --server-id $server_id "$@"
}