p6_aws_greengrass_device_definition_get() {
    local device_definition_id="$1"
    shift 1

    p6_run_read_cmd aws greengrass get-device-definition --device-definition-id $device_definition_id "$@"
}
