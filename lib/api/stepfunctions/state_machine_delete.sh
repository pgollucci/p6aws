p6_aws_stepfunctions_state_machine_delete() {
    local state_machine_arn="$1"
    shift 1

    p6_log_or_run aws stepfunctions delete-state-machine --state-machine-arn $state_machine_arn "$@"
}
