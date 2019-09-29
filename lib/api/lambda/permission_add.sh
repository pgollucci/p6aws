######################################################################
#<
#
# Function:
#      = p6_aws_lambda_permission_add(function_name, statement_id, action, principal)
#
# Arg(s):
#    function_name - 
#    statement_id - 
#    action - 
#    principal - 
#
#
#>
######################################################################
p6_aws_lambda_permission_add() {
    local function_name="$1"
    local statement_id="$2"
    local action="$3"
    local principal="$4"
    shift 4

    p6_run_write_cmd aws lambda add-permission --function-name $function_name --statement-id $statement_id --action $action --principal $principal "$@"
}