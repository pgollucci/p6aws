######################################################################
#<
#
# Function:
#	p6_aws_mediapackage_channel_credentials_rotate(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_mediapackage_channel_credentials_rotate() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws mediapackage rotate-channel-credentials --id $id "$@"
}