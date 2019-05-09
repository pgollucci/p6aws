p6_aws_sagemaker_tags_add() {
    local resource_arn="$1"
    local tags="$2"
    shift 2

    p6_log_or_run aws sagemaker add-tags --resource-arn $resource_arn --tags $tags "$@"
}
