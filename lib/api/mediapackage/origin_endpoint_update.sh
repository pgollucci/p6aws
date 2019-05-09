p6_aws_mediapackage_origin_endpoint_update() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws mediapackage update-origin-endpoint --id $id "$@"
}
