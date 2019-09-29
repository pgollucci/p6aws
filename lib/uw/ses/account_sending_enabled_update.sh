p6_aws_ses_enabled() {
    
    cond_log_and_run aws ses update-account-sending-enabled --enabled "$@"
}

