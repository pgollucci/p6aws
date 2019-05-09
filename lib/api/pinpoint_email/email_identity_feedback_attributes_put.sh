p6_aws_pinpoint_email_email_identity_feedback_attributes_put() {
    local email_identity="$1"
    shift 1

    p6_run_write_cmd aws pinpoint-email put-email-identity-feedback-attributes --email-identity $email_identity "$@"
}
