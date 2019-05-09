p6_aws_datasync_agent_create() {
    local activation_key="$1"
    shift 1

    p6_run_write_cmd aws datasync create-agent --activation-key $activation_key "$@"
}
