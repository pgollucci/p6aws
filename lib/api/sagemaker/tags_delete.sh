p6_aws_sagemaker_tags_delete() {
    local resource_arn="$1"
    local tag_keys="$2"
    shift 2

    p6_log_or_run aws sagemaker delete-tags --resource-arn $resource_arn --tag-keys $tag_keys "$@"
}
