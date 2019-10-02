######################################################################
#<
#
# Function:
#	p6_aws_iot1click_devices_enabled(device_id)
#
#  Args:
#	device_id - 
#
#>
######################################################################
p6_aws_iot1click_devices_enabled() {
        local device_id="$1"
        shift 1

    cond_log_and_run aws iot1click-devices update-device-state --device-id $device_id --enabled "$@"
}