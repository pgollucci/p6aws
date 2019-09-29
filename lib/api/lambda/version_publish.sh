######################################################################
#<
#
# Function:
#      = p6_aws_lambda_version_publish(function_name)
#
# Arg(s):
#    function_name - 
#
#
#>
######################################################################
p6_aws_lambda_version_publish() {
    local function_name="$1"
    shift 1

    p6_run_write_cmd aws lambda publish-version --function-name $function_name "$@"
}