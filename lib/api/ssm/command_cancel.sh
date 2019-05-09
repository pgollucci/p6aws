p6_aws_ssm_command_cancel() {
    local command_id="$1"
    shift 1

    p6_run_write_cmd aws ssm cancel-command --command-id $command_id "$@"
}
