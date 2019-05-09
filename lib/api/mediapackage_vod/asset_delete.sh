p6_aws_mediapackage_vod_asset_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws mediapackage-vod delete-asset --id $id "$@"
}
