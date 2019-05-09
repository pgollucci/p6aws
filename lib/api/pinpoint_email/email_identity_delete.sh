p6_aws_pinpoint_email_email_identity_delete() {
    local email_identity="$1"
    shift 1

    p6_log_or_run aws pinpoint-email delete-email-identity --email-identity $email_identity "$@"
}
