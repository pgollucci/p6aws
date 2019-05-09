p6_aws_mediapackage_vod_packaging_group_create() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws mediapackage-vod create-packaging-group --id $id "$@"
}
