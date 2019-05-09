p6_aws_iot1click_devices_device_state_update() {
    local device_id="$1"
    shift 1

    p6_log_or_run aws iot1click-devices update-device-state --device-id $device_id "$@"
}
