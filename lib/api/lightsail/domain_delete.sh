p6_aws_lightsail_domain_delete() {
    local domain_name="$1"
    shift 1

    p6_run_write_cmd aws lightsail delete-domain --domain-name $domain_name "$@"
}
