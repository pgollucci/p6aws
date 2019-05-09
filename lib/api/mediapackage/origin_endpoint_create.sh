p6_aws_mediapackage_origin_endpoint_create() {
    local channel_id="$1"
    local id="$2"
    shift 2

    p6_run_write_cmd aws mediapackage create-origin-endpoint --channel-id $channel_id --id $id "$@"
}
