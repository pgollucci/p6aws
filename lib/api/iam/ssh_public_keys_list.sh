p6_aws_iam_ssh_public_keys_list() {

    p6_log_and_run aws iam list-ssh-public-keys "$@"
}
