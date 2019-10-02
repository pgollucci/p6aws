######################################################################
#<
#
# Function:
#	p6_aws_iot1click_devices_device_methods_get(device_id)
#
#  Args:
#	device_id - 
#
#>
######################################################################
p6_aws_iot1click_devices_device_methods_get() {
    local device_id="$1"
    shift 1

    p6_run_read_cmd aws iot1click-devices get-device-methods --device-id $device_id "$@"
}