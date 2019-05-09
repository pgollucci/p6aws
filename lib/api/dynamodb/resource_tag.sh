p6_aws_dynamodb_resource_tag() {
    local resource_arn="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws dynamodb tag-resource --resource-arn $resource_arn --tags $tags "$@"
}
