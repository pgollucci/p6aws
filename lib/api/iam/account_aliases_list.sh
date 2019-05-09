p6_aws_iam_account_aliases_list() {

    p6_run_read_cmd aws iam list-account-aliases "$@"
}
