p6_aws_mobile_bundle_export() {
    local bundle_id="$1"
    shift 1

    p6_log_or_run aws mobile export-bundle --bundle-id $bundle_id "$@"
}
