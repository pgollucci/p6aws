######################################################################
#<
#
# Function:
#	p6_aws_mediapackage_vod_asset_describe(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_mediapackage_vod_asset_describe() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws mediapackage-vod describe-asset --id $id "$@"
}