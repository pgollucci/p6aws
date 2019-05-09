p6_aws_mediaconvert_certificate_associate() {
    local arn="$1"
    shift 1

    p6_log_or_run aws mediaconvert associate-certificate --arn $arn "$@"
}
