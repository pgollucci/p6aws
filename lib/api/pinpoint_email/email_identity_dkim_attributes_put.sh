p6_aws_pinpoint_email_email_identity_dkim_attributes_put() {
    local email_identity="$1"
    shift 1

    p6_run_write_cmd aws pinpoint-email put-email-identity-dkim-attributes --email-identity $email_identity "$@"
}
