######################################################################
#<
#
# Function:
#      = p6_aws_lambda_invoke(function_name)
#
# Arg(s):
#    function_name - 
#
#
#>
######################################################################
p6_aws_lambda_invoke() {
    local function_name="$1"
    shift 1

    p6_run_read_cmd aws lambda invoke --function-name $function_name "$@"
}