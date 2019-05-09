p6_aws_globalaccelerator_accelerator_create() {
    local name="$1"
    local idempotency_token="$2"
    shift 2

    p6_log_or_run aws globalaccelerator create-accelerator --name $name --idempotency-token $idempotency_token "$@"
}
