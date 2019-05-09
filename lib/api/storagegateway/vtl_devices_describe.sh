p6_aws_storagegateway_vtl_devices_describe() {
    local gateway_arn="$1"
    shift 1

    p6_run_read_cmd aws storagegateway describe-vtl-devices --gateway-arn $gateway_arn "$@"
}
