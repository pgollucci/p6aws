p6_aws_mediapackage_origin_endpoint_describe() {
    local id="$1"
    shift 1

    p6_log_and_run aws mediapackage describe-origin-endpoint --id $id "$@"
}
