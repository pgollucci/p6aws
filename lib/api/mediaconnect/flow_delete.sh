p6_aws_mediaconnect_flow_delete() {
    local flow_arn="$1"
    shift 1

    p6_run_write_cmd aws mediaconnect delete-flow --flow-arn $flow_arn "$@"
}
