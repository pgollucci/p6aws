p6_aws_iotanalytics_resource_tag() {
    local resource_arn="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws iotanalytics tag-resource --resource-arn $resource_arn --tags $tags "$@"
}
