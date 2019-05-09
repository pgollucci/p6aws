p6_aws_globalaccelerator_endpoint_group_create() {
    local listener_arn="$1"
    local endpoint_group_region="$2"
    local idempotency_token="$3"
    shift 3

    p6_run_write_cmd aws globalaccelerator create-endpoint-group --listener-arn $listener_arn --endpoint-group-region $endpoint_group_region --idempotency-token $idempotency_token "$@"
}
