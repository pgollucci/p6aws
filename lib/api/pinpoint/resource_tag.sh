p6_aws_pinpoint_resource_tag() {
    local resource_arn="$1"
    local tags_model="$2"
    shift 2

    p6_run_write_cmd aws pinpoint tag-resource --resource-arn $resource_arn --tags-model $tags_model "$@"
}
