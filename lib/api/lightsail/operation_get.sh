p6_aws_lightsail_operation_get() {
    local operation_id="$1"
    shift 1

    p6_log_and_run aws lightsail get-operation --operation-id $operation_id "$@"
}
