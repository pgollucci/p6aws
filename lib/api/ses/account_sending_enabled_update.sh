p6_aws_ses_account_sending_enabled_update() {

    p6_log_or_run aws ses update-account-sending-enabled "$@"
}
