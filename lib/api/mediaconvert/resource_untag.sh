p6_aws_mediaconvert_resource_untag() {
    local arn="$1"
    shift 1

    p6_log_or_run aws mediaconvert untag-resource --arn $arn "$@"
}
