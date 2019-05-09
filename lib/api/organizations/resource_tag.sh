p6_aws_organizations_resource_tag() {
    local resource_id="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws organizations tag-resource --resource-id $resource_id --tags $tags "$@"
}
