p6_aws_mobile_bundle_describe() {
    local bundle_id="$1"
    shift 1

    p6_log_and_run aws mobile describe-bundle --bundle-id $bundle_id "$@"
}
