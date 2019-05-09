p6_aws_datasync_agent_update() {
    local agent_arn="$1"
    shift 1

    p6_run_write_cmd aws datasync update-agent --agent-arn $agent_arn "$@"
}
