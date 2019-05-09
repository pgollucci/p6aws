p6_aws_datasync_agent_describe() {
    local agent_arn="$1"
    shift 1

    p6_run_read_cmd aws datasync describe-agent --agent-arn $agent_arn "$@"
}
