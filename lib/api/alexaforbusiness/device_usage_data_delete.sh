p6_aws_alexaforbusiness_device_usage_data_delete() {
    local device_arn="$1"
    local device_usage_type="$2"
    shift 2

    p6_run_write_cmd aws alexaforbusiness delete-device-usage-data --device-arn $device_arn --device-usage-type $device_usage_type "$@"
}
