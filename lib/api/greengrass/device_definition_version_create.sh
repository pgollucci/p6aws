p6_aws_greengrass_device_definition_version_create() {
    local device_definition_id="$1"
    shift 1

    p6_log_or_run aws greengrass create-device-definition-version --device-definition-id $device_definition_id "$@"
}
