p6_aws_sagemaker_tags_list() {
    local resource_arn="$1"
    shift 1

    p6_log_and_run aws sagemaker list-tags --resource-arn $resource_arn "$@"
}
