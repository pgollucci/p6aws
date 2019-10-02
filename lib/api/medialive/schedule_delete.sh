######################################################################
#<
#
# Function:
#	p6_aws_medialive_schedule_delete(channel_id)
#
#  Args:
#	channel_id - 
#
#>
######################################################################
p6_aws_medialive_schedule_delete() {
    local channel_id="$1"
    shift 1

    p6_run_write_cmd aws medialive delete-schedule --channel-id $channel_id "$@"
}