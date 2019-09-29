######################################################################
#<
#
# Function:
#      = p6_aws_iot1click_devices_device_describe(device_id)
#
# Arg(s):
#    device_id - 
#
#
#>
######################################################################
p6_aws_iot1click_devices_device_describe() {
    local device_id="$1"
    shift 1

    p6_run_read_cmd aws iot1click-devices describe-device --device-id $device_id "$@"
}