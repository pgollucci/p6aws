######################################################################
#<
#
# Function:
#      = p6_aws_mediapackage_vod_packaging_group_describe(id)
#
# Arg(s):
#    id - 
#
#
#>
######################################################################
p6_aws_mediapackage_vod_packaging_group_describe() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws mediapackage-vod describe-packaging-group --id $id "$@"
}