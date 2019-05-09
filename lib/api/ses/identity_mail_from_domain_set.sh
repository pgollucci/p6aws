p6_aws_ses_identity_mail_from_domain_set() {
    local identity="$1"
    shift 1

    p6_run_write_cmd aws ses set-identity-mail-from-domain --identity $identity "$@"
}
