p6_aws_route53domains_domain_availability_check() {
    local domain_name="$1"
    shift 1

    p6_run_write_cmd aws route53domains check-domain-availability --domain-name $domain_name "$@"
}
