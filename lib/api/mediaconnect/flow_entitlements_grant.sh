p6_aws_mediaconnect_flow_entitlements_grant() {
    local entitlements="$1"
    local flow_arn="$2"
    shift 2

    p6_log_or_run aws mediaconnect grant-flow-entitlements --entitlements $entitlements --flow-arn $flow_arn "$@"
}
