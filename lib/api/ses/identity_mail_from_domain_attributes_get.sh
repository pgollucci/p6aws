p6_aws_ses_identity_mail_from_domain_attributes_get() {
    local identities="$1"
    shift 1

    p6_log_and_run aws ses get-identity-mail-from-domain-attributes --identities $identities "$@"
}
