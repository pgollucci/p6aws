p6_aws_route53resolver_tags_for_resource_list() {
    local resource_arn="$1"
    shift 1

    p6_log_and_run aws route53resolver list-tags-for-resource --resource-arn $resource_arn "$@"
}
