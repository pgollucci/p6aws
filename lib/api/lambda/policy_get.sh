######################################################################
#<
#
# Function:
#      = p6_aws_lambda_policy_get(function_name)
#
# Arg(s):
#    function_name - 
#
#
#>
######################################################################
p6_aws_lambda_policy_get() {
    local function_name="$1"
    shift 1

    p6_run_read_cmd aws lambda get-policy --function-name $function_name "$@"
}