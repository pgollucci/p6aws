p6_aws_stepfunctions_execution_stop() {
    local execution_arn="$1"
    shift 1

    p6_run_write_cmd aws stepfunctions stop-execution --execution-arn $execution_arn "$@"
}
