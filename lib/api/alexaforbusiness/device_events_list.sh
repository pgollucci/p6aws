######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_device_events_list(device_arn)
#
# Arg(s):
#    device_arn - 
#
#
#>
######################################################################
p6_aws_alexaforbusiness_device_events_list() {
    local device_arn="$1"
    shift 1

    p6_run_read_cmd aws alexaforbusiness list-device-events --device-arn $device_arn "$@"
}