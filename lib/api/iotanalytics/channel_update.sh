######################################################################
#<
#
# Function:
#	p6_aws_iotanalytics_channel_update(channel_name)
#
#  Args:
#	channel_name - 
#
#>
######################################################################
p6_aws_iotanalytics_channel_update() {
    local channel_name="$1"
    shift 1

    p6_run_write_cmd aws iotanalytics update-channel --channel-name $channel_name "$@"
}