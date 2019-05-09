p6_aws_mediaconnect_flow_start() {
    local flow_arn="$1"
    shift 1

    p6_log_or_run aws mediaconnect start-flow --flow-arn $flow_arn "$@"
}
