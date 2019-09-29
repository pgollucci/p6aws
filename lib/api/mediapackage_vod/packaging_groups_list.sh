######################################################################
#<
#
# Function:
#      = p6_aws_mediapackage_vod_packaging_groups_list()
#
#
#
#>
######################################################################
p6_aws_mediapackage_vod_packaging_groups_list() {

    p6_run_read_cmd aws mediapackage-vod list-packaging-groups "$@"
}