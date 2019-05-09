p6_aws_iot1click_devices_device_methods_get() {
    local device_id="$1"
    shift 1

    p6_log_and_run aws iot1click-devices get-device-methods --device-id $device_id "$@"
}
