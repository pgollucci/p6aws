p6_aws_mediaconnect_flow_entitlement_update() {
    local entitlement_arn="$1"
    local flow_arn="$2"
    shift 2

    p6_log_or_run aws mediaconnect update-flow-entitlement --entitlement-arn $entitlement_arn --flow-arn $flow_arn "$@"
}
