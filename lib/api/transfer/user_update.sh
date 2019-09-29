######################################################################
#<
#
# Function:
#      = p6_aws_transfer_user_update(server_id, user_name)
#
# Arg(s):
#    server_id - 
#    user_name - 
#
#
#>
######################################################################
p6_aws_transfer_user_update() {
    local server_id="$1"
    local user_name="$2"
    shift 2

    p6_run_write_cmd aws transfer update-user --server-id $server_id --user-name $user_name "$@"
}