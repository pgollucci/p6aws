p6_aws_iam_account_password_policy_delete() {

    p6_log_or_run aws iam delete-account-password-policy "$@"
}
