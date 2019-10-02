######################################################################
#<
#
# Function:
#	p6_aws_medialive_channel_update(channel_id)
#
#  Args:
#	channel_id - 
#
#>
######################################################################
p6_aws_medialive_channel_update() {
    local channel_id="$1"
    shift 1

    p6_run_write_cmd aws medialive update-channel --channel-id $channel_id "$@"
}