######################################################################
#<
#
# Function:
#	p6_aws_iam_ssh_public_key_upload(user_name, ssh_public_key_body)
#
#  Args:
#	user_name - 
#	ssh_public_key_body - 
#
#>
######################################################################
p6_aws_iam_ssh_public_key_upload() {
    local user_name="$1"
    local ssh_public_key_body="$2"
    shift 2

    p6_run_write_cmd aws iam upload-ssh-public-key --user-name $user_name --ssh-public-key-body $ssh_public_key_body "$@"
}