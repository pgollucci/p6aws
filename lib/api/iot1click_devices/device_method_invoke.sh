######################################################################
#<
#
# Function:
#	p6_aws_iot1click_devices_device_method_invoke(device_id)
#
#  Args:
#	device_id - 
#
#>
######################################################################
p6_aws_iot1click_devices_device_method_invoke() {
    local device_id="$1"
    shift 1

    p6_run_write_cmd aws iot1click-devices invoke-device-method --device-id $device_id "$@"
}