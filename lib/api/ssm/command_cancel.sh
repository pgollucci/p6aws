p6_aws_ssm_command_cancel() {
    local command_id="$1"
    shift 1

    p6_log_or_run aws ssm cancel-command --command-id $command_id "$@"
}
