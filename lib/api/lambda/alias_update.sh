######################################################################
#<
#
# Function:
#	p6_aws_lambda_alias_update(function_name, name)
#
#  Args:
#	function_name - 
#	name - 
#
#>
######################################################################
p6_aws_lambda_alias_update() {
    local function_name="$1"
    local name="$2"
    shift 2

    p6_run_write_cmd aws lambda update-alias --function-name $function_name --name $name "$@"
}