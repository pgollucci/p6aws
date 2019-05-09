p6_aws_iam_access_keys_list() {

    p6_log_and_run aws iam list-access-keys "$@"
}
