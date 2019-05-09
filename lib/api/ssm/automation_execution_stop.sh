p6_aws_ssm_automation_execution_stop() {
    local automation_execution_id="$1"
    shift 1

    p6_log_or_run aws ssm stop-automation-execution --automation-execution-id $automation_execution_id "$@"
}
