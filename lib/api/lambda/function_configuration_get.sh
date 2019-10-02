######################################################################
#<
#
# Function:
#	p6_aws_lambda_function_configuration_get(function_name)
#
#  Args:
#	function_name - 
#
#>
######################################################################
p6_aws_lambda_function_configuration_get() {
    local function_name="$1"
    shift 1

    p6_run_read_cmd aws lambda get-function-configuration --function-name $function_name "$@"
}