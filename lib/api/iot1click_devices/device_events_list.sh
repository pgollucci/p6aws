######################################################################
#<
#
# Function:
#	p6_aws_iot1click_devices_device_events_list(device_id, from_time_stamp, to_time_stamp)
#
#  Args:
#	device_id - 
#	from_time_stamp - 
#	to_time_stamp - 
#
#>
######################################################################
p6_aws_iot1click_devices_device_events_list() {
    local device_id="$1"
    local from_time_stamp="$2"
    local to_time_stamp="$3"
    shift 3

    p6_run_read_cmd aws iot1click-devices list-device-events --device-id $device_id --from-time-stamp $from_time_stamp --to-time-stamp $to_time_stamp "$@"
}