######################################################################
#<
#
# Function:
#      = p6_aws_transfer_server_start(server_id)
#
# Arg(s):
#    server_id - 
#
#
#>
######################################################################
p6_aws_transfer_server_start() {
    local server_id="$1"
    shift 1

    p6_run_write_cmd aws transfer start-server --server-id $server_id "$@"
}