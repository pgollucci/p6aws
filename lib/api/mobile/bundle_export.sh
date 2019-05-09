p6_aws_mobile_bundle_export() {
    local bundle_id="$1"
    shift 1

    p6_run_write_cmd aws mobile export-bundle --bundle-id $bundle_id "$@"
}
