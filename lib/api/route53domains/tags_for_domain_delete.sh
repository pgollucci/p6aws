p6_aws_route53domains_tags_for_domain_delete() {
    local domain_name="$1"
    local tags_to_delete="$2"
    shift 2

    p6_log_or_run aws route53domains delete-tags-for-domain --domain-name $domain_name --tags-to-delete $tags_to_delete "$@"
}
