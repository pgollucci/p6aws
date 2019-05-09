p6_aws_mediaconnect_flow_outputs_add() {
    local flow_arn="$1"
    local outputs="$2"
    shift 2

    p6_log_or_run aws mediaconnect add-flow-outputs --flow-arn $flow_arn --outputs $outputs "$@"
}
