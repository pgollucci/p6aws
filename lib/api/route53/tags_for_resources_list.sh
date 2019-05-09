p6_aws_route53_tags_for_resources_list() {
    local resource_type="$1"
    local resource_ids="$2"
    shift 2

    p6_log_and_run aws route53 list-tags-for-resources --resource-type $resource_type --resource-ids $resource_ids "$@"
}
