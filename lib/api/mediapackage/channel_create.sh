p6_aws_mediapackage_channel_create() {
    local id="$1"
    shift 1

    p6_log_or_run aws mediapackage create-channel --id $id "$@"
}
