p6_aws_lightsail_domain_delete() {
    local domain_name="$1"
    shift 1

    p6_log_or_run aws lightsail delete-domain --domain-name $domain_name "$@"
}
