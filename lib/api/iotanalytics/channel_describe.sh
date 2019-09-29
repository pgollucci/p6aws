######################################################################
#<
#
# Function:
#      = p6_aws_iotanalytics_channel_describe(channel_name)
#
# Arg(s):
#    channel_name - 
#
#
#>
######################################################################
p6_aws_iotanalytics_channel_describe() {
    local channel_name="$1"
    shift 1

    p6_run_read_cmd aws iotanalytics describe-channel --channel-name $channel_name "$@"
}