p6_aws_ses_identity_mail_from_domain_set() {
    local identity="$1"
    shift 1

    p6_log_or_run aws ses set-identity-mail-from-domain --identity $identity "$@"
}
