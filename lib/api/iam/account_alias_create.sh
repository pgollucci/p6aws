p6_aws_iam_account_alias_create() {
    local account_alias="$1"
    shift 1

    p6_run_write_cmd aws iam create-account-alias --account-alias $account_alias "$@"
}
