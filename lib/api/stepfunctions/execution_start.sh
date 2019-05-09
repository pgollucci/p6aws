p6_aws_stepfunctions_execution_start() {
    local state_machine_arn="$1"
    shift 1

    p6_run_write_cmd aws stepfunctions start-execution --state-machine-arn $state_machine_arn "$@"
}
