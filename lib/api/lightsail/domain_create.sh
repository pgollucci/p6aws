p6_aws_lightsail_domain_create() {
    local domain_name="$1"
    shift 1

    p6_log_or_run aws lightsail create-domain --domain-name $domain_name "$@"
}
