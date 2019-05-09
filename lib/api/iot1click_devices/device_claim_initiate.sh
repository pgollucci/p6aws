p6_aws_iot1click_devices_device_claim_initiate() {
    local device_id="$1"
    shift 1

    p6_log_or_run aws iot1click-devices initiate-device-claim --device-id $device_id "$@"
}
