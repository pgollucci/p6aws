p6_aws_mediapackage_channel_describe() {
    local id="$1"
    shift 1

    p6_log_and_run aws mediapackage describe-channel --id $id "$@"
}
