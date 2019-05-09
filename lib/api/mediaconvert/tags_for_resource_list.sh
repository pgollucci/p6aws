p6_aws_mediaconvert_tags_for_resource_list() {
    local arn="$1"
    shift 1

    p6_log_and_run aws mediaconvert list-tags-for-resource --arn $arn "$@"
}
