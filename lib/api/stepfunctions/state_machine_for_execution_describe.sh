p6_aws_stepfunctions_state_machine_for_execution_describe() {
    local execution_arn="$1"
    shift 1

    p6_log_and_run aws stepfunctions describe-state-machine-for-execution --execution-arn $execution_arn "$@"
}
