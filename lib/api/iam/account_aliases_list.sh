p6_aws_iam_account_aliases_list() {

    p6_log_and_run aws iam list-account-aliases "$@"
}
