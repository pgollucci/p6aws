p6_aws_alexaforbusiness_gateway_group_delete() {
    local gateway_group_arn="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness delete-gateway-group --gateway-group-arn $gateway_group_arn "$@"
}
