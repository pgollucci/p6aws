######################################################################
#<
#
# Function:
#      = p6_aws_iam_ssh_public_keys_list()
#
#
#
#>
######################################################################
p6_aws_iam_ssh_public_keys_list() {

    p6_run_read_cmd aws iam list-ssh-public-keys "$@"
}