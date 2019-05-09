p6_aws_devicefarm_device_pool_compatibility_get() {
    local device_pool_arn="$1"
    shift 1

    p6_run_read_cmd aws devicefarm get-device-pool-compatibility --device-pool-arn $device_pool_arn "$@"
}
