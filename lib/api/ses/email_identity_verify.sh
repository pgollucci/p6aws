p6_aws_ses_email_identity_verify() {
    local email_address="$1"
    shift 1

    p6_log_or_run aws ses verify-email-identity --email-address $email_address "$@"
}
