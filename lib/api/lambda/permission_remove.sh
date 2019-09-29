######################################################################
#<
#
# Function:
#      = p6_aws_lambda_permission_remove(function_name, statement_id)
#
# Arg(s):
#    function_name - 
#    statement_id - 
#
#
#>
######################################################################
p6_aws_lambda_permission_remove() {
    local function_name="$1"
    local statement_id="$2"
    shift 2

    p6_run_write_cmd aws lambda remove-permission --function-name $function_name --statement-id $statement_id "$@"
}