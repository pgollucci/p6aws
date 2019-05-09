p6_aws_mediaconvert_resource_tag() {
    local arn="$1"
    local tags="$2"
    shift 2

    p6_log_or_run aws mediaconvert tag-resource --arn $arn --tags $tags "$@"
}
