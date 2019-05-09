p6_aws_lambda_account_settings_get() {

    p6_run_read_cmd aws lambda get-account-settings "$@"
}
