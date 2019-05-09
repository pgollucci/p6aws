p6_aws_pinpoint_email_email_identity_get() {
    local email_identity="$1"
    shift 1

    p6_log_and_run aws pinpoint-email get-email-identity --email-identity $email_identity "$@"
}
