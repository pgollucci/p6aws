p6_aws_route53_tags_for_resource_change() {
    local resource_type="$1"
    local resource_id="$2"
    shift 2

    p6_log_or_run aws route53 change-tags-for-resource --resource-type $resource_type --resource-id $resource_id "$@"
}
