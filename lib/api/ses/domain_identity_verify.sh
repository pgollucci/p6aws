p6_aws_ses_domain_identity_verify() {
    local domain="$1"
    shift 1

    p6_log_or_run aws ses verify-domain-identity --domain $domain "$@"
}
