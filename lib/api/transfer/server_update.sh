######################################################################
#<
#
# Function:
#      = p6_aws_transfer_server_update(server_id)
#
# Arg(s):
#    server_id - 
#
#
#>
######################################################################
p6_aws_transfer_server_update() {
    local server_id="$1"
    shift 1

    p6_run_write_cmd aws transfer update-server --server-id $server_id "$@"
}