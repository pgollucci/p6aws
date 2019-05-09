p6_aws_datasync_agent_delete() {
    local agent_arn="$1"
    shift 1

    p6_run_write_cmd aws datasync delete-agent --agent-arn $agent_arn "$@"
}
