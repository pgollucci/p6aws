p6_aws_sagemaker_tags_add() {
    local resource_arn="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws sagemaker add-tags --resource-arn $resource_arn --tags $tags "$@"
}
