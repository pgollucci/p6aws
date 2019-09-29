######################################################################
#<
#
# Function:
#      = p6_aws_lambda_versions_by_function_list(function_name)
#
# Arg(s):
#    function_name - 
#
#
#>
######################################################################
p6_aws_lambda_versions_by_function_list() {
    local function_name="$1"
    shift 1

    p6_run_read_cmd aws lambda list-versions-by-function --function-name $function_name "$@"
}