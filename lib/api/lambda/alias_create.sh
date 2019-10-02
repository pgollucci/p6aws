######################################################################
#<
#
# Function:
#	p6_aws_lambda_alias_create(function_name, name, function_version)
#
#  Args:
#	function_name - 
#	name - 
#	function_version - 
#
#>
######################################################################
p6_aws_lambda_alias_create() {
    local function_name="$1"
    local name="$2"
    local function_version="$3"
    shift 3

    p6_run_write_cmd aws lambda create-alias --function-name $function_name --name $name --function-version $function_version "$@"
}