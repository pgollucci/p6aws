######################################################################
#<
#
# Function:
#      = p6_aws_lambda_function_concurrency_delete(function_name)
#
# Arg(s):
#    function_name - 
#
#
#>
######################################################################
p6_aws_lambda_function_concurrency_delete() {
    local function_name="$1"
    shift 1

    p6_run_write_cmd aws lambda delete-function-concurrency --function-name $function_name "$@"
}