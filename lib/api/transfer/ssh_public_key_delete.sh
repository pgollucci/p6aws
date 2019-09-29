######################################################################
#<
#
# Function:
#      = p6_aws_transfer_ssh_public_key_delete(server_id, ssh_public_key_id, user_name)
#
# Arg(s):
#    server_id - 
#    ssh_public_key_id - 
#    user_name - 
#
#
#>
######################################################################
p6_aws_transfer_ssh_public_key_delete() {
    local server_id="$1"
    local ssh_public_key_id="$2"
    local user_name="$3"
    shift 3

    p6_run_write_cmd aws transfer delete-ssh-public-key --server-id $server_id --ssh-public-key-id $ssh_public_key_id --user-name $user_name "$@"
}