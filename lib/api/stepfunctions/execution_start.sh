p6_aws_stepfunctions_execution_start() {
    local state_machine_arn="$1"
    shift 1

    p6_log_or_run aws stepfunctions start-execution --state-machine-arn $state_machine_arn "$@"
}
