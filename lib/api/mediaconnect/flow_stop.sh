p6_aws_mediaconnect_flow_stop() {
    local flow_arn="$1"
    shift 1

    p6_log_or_run aws mediaconnect stop-flow --flow-arn $flow_arn "$@"
}
