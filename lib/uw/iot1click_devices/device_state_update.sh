aws_iot1click_devices_enabled() {
        local device_id="$1"
        shift 1

    cond_log_and_run aws iot1click-devices update-device-state --device-id $device_id --enabled "$@"
}

