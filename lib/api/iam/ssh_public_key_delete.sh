######################################################################
#<
#
# Function:
#      = p6_aws_iam_ssh_public_key_delete(user_name, ssh_public_key_id)
#
# Arg(s):
#    user_name - 
#    ssh_public_key_id - 
#
#
#>
######################################################################
p6_aws_iam_ssh_public_key_delete() {
    local user_name="$1"
    local ssh_public_key_id="$2"
    shift 2

    p6_run_write_cmd aws iam delete-ssh-public-key --user-name $user_name --ssh-public-key-id $ssh_public_key_id "$@"
}