######################################################################
#<
#
# Function:
#	p6_aws_iot1click_devices_device_unclaim(device_id)
#
#  Args:
#	device_id - 
#
#>
######################################################################
p6_aws_iot1click_devices_device_unclaim() {
    local device_id="$1"
    shift 1

    p6_run_write_cmd aws iot1click-devices unclaim-device --device-id $device_id "$@"
}