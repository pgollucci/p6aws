p6_aws_ses_account_sending_enabled_get() {

    p6_log_and_run aws ses get-account-sending-enabled "$@"
}
