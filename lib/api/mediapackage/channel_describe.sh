######################################################################
#<
#
# Function:
#	p6_aws_mediapackage_channel_describe(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_mediapackage_channel_describe() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws mediapackage describe-channel --id $id "$@"
}