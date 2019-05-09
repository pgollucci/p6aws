p6_aws_lightsail_resource_tag() {
    local resource_name="$1"
    local tags="$2"
    shift 2

    p6_log_or_run aws lightsail tag-resource --resource-name $resource_name --tags $tags "$@"
}
