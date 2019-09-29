######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_device_delete(device_arn)
#
# Arg(s):
#    device_arn - 
#
#
#>
######################################################################
p6_aws_alexaforbusiness_device_delete() {
    local device_arn="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness delete-device --device-arn $device_arn "$@"
}