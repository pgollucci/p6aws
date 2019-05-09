p6_aws_iam_account_password_policy_update() {

    p6_log_or_run aws iam update-account-password-policy "$@"
}
