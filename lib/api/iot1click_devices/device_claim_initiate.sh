p6_aws_iot1click_devices_device_claim_initiate() {
    local device_id="$1"
    shift 1

    p6_run_write_cmd aws iot1click-devices initiate-device-claim --device-id $device_id "$@"
}
