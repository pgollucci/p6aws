######################################################################
#<
#
# Function:
#	p6_aws_mediapackage_origin_endpoint_describe(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_mediapackage_origin_endpoint_describe() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws mediapackage describe-origin-endpoint --id $id "$@"
}