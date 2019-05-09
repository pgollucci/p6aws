p6_aws_mobile_bundle_describe() {
    local bundle_id="$1"
    shift 1

    p6_run_read_cmd aws mobile describe-bundle --bundle-id $bundle_id "$@"
}
