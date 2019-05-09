p6_aws_route53domains_domain_contact_update() {
    local domain_name="$1"
    shift 1

    p6_log_or_run aws route53domains update-domain-contact --domain-name $domain_name "$@"
}
