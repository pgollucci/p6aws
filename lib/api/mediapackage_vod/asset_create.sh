p6_aws_mediapackage_vod_asset_create() {
    local id="$1"
    local packaging_group_id="$2"
    local source_arn="$3"
    local source_role_arn="$4"
    shift 4

    p6_run_write_cmd aws mediapackage-vod create-asset --id $id --packaging-group-id $packaging_group_id --source-arn $source_arn --source-role-arn $source_role_arn "$@"
}
