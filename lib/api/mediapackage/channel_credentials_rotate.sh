p6_aws_mediapackage_channel_credentials_rotate() {
    local id="$1"
    shift 1

    p6_log_or_run aws mediapackage rotate-channel-credentials --id $id "$@"
}
