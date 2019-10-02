######################################################################
#<
#
# Function:
#	p6_aws_lambda_function_code_update(function_name)
#
#  Args:
#	function_name - 
#
#>
######################################################################
p6_aws_lambda_function_code_update() {
    local function_name="$1"
    shift 1

    p6_run_write_cmd aws lambda update-function-code --function-name $function_name "$@"
}