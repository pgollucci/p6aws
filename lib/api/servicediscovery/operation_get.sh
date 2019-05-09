p6_aws_servicediscovery_operation_get() {
    local operation_id="$1"
    shift 1

    p6_log_and_run aws servicediscovery get-operation --operation-id $operation_id "$@"
}
