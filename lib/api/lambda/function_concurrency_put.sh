p6_aws_lambda_function_concurrency_put() {
    local function_name="$1"
    local reserved_concurrent_executions="$2"
    shift 2

    p6_log_or_run aws lambda put-function-concurrency --function-name $function_name --reserved-concurrent-executions $reserved_concurrent_executions "$@"
}
