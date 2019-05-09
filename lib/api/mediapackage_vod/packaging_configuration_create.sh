p6_aws_mediapackage_vod_packaging_configuration_create() {
    local id="$1"
    local packaging_group_id="$2"
    shift 2

    p6_run_write_cmd aws mediapackage-vod create-packaging-configuration --id $id --packaging-group-id $packaging_group_id "$@"
}
