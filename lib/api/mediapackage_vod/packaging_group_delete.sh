######################################################################
#<
#
# Function:
#	p6_aws_mediapackage_vod_packaging_group_delete(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_mediapackage_vod_packaging_group_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws mediapackage-vod delete-packaging-group --id $id "$@"
}