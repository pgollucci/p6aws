######################################################################
#<
#
# Function:
#	p6_aws_mediapackage_origin_endpoint_delete(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_mediapackage_origin_endpoint_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws mediapackage delete-origin-endpoint --id $id "$@"
}