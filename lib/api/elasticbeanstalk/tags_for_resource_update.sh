p6_aws_elasticbeanstalk_tags_for_resource_update() {
    local resource_arn="$1"
    shift 1

    p6_log_or_run aws elasticbeanstalk update-tags-for-resource --resource-arn $resource_arn "$@"
}
