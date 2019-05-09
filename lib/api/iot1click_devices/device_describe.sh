p6_aws_iot1click_devices_device_describe() {
    local device_id="$1"
    shift 1

    p6_log_and_run aws iot1click-devices describe-device --device-id $device_id "$@"
}
