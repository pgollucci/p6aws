p6_aws_elasticbeanstalk_tags_for_resource_list() {
    local resource_arn="$1"
    shift 1

    p6_log_and_run aws elasticbeanstalk list-tags-for-resource --resource-arn $resource_arn "$@"
}
