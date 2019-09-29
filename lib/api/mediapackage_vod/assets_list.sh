######################################################################
#<
#
# Function:
#      = p6_aws_mediapackage_vod_assets_list()
#
#
#
#>
######################################################################
p6_aws_mediapackage_vod_assets_list() {

    p6_run_read_cmd aws mediapackage-vod list-assets "$@"
}