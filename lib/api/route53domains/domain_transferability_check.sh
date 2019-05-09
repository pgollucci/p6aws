p6_aws_route53domains_domain_transferability_check() {
    local domain_name="$1"
    shift 1

    p6_log_or_run aws route53domains check-domain-transferability --domain-name $domain_name "$@"
}
