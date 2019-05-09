p6_aws_storagegateway_gateway_software_now_update() {
    local gateway_arn="$1"
    shift 1

    p6_log_or_run aws storagegateway update-gateway-software-now --gateway-arn $gateway_arn "$@"
}
