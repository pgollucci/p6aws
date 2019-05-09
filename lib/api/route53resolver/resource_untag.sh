p6_aws_route53resolver_resource_untag() {
    local resource_arn="$1"
    local tag_keys="$2"
    shift 2

    p6_log_or_run aws route53resolver untag-resource --resource-arn $resource_arn --tag-keys $tag_keys "$@"
}
