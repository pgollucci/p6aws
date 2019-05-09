p6_aws_appmesh_resource_tag() {
    local resource_arn="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws appmesh tag-resource --resource-arn $resource_arn --tags $tags "$@"
}
