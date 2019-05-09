p6_aws_ssm_automation_step_executions_describe() {
    local automation_execution_id="$1"
    shift 1

    p6_log_and_run aws ssm describe-automation-step-executions --automation-execution-id $automation_execution_id "$@"
}
