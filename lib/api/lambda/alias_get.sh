######################################################################
#<
#
# Function:
#      = p6_aws_lambda_alias_get(function_name, name)
#
# Arg(s):
#    function_name - 
#    name - 
#
#
#>
######################################################################
p6_aws_lambda_alias_get() {
    local function_name="$1"
    local name="$2"
    shift 2

    p6_run_read_cmd aws lambda get-alias --function-name $function_name --name $name "$@"
}