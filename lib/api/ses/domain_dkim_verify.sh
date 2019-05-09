p6_aws_ses_domain_dkim_verify() {
    local domain="$1"
    shift 1

    p6_log_or_run aws ses verify-domain-dkim --domain $domain "$@"
}
