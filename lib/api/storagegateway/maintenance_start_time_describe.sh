p6_aws_storagegateway_maintenance_start_time_describe() {
    local gateway_arn="$1"
    shift 1

    p6_run_read_cmd aws storagegateway describe-maintenance-start-time --gateway-arn $gateway_arn "$@"
}
