######################################################################
#<
#
# Function:
#      = p6_aws_lambda_function_concurrency_put(function_name, reserved_concurrent_executions)
#
# Arg(s):
#    function_name - 
#    reserved_concurrent_executions - 
#
#
#>
######################################################################
p6_aws_lambda_function_concurrency_put() {
    local function_name="$1"
    local reserved_concurrent_executions="$2"
    shift 2

    p6_run_write_cmd aws lambda put-function-concurrency --function-name $function_name --reserved-concurrent-executions $reserved_concurrent_executions "$@"
}