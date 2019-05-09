p6_aws_globalaccelerator_listener_create() {
    local accelerator_arn="$1"
    local port_ranges="$2"
    local protocol="$3"
    local idempotency_token="$4"
    shift 4

    p6_run_read_cmd aws globalaccelerator create-listener --accelerator-arn $accelerator_arn --port-ranges $port_ranges --protocol $protocol --idempotency-token $idempotency_token "$@"
}
