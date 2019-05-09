p6_aws_mediapackage_origin_endpoint_delete() {
    local id="$1"
    shift 1

    p6_log_or_run aws mediapackage delete-origin-endpoint --id $id "$@"
}
