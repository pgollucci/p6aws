p6_aws_mediapackage_vod_packaging_configuration_describe() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws mediapackage-vod describe-packaging-configuration --id $id "$@"
}
