######################################################################
#<
#
# Function:
#      = p6_aws_transfer_users_list(server_id)
#
# Arg(s):
#    server_id - 
#
#
#>
######################################################################
p6_aws_transfer_users_list() {
    local server_id="$1"
    shift 1

    p6_run_read_cmd aws transfer list-users --server-id $server_id "$@"
}